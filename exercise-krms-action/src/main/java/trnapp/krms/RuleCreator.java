package trnapp.krms;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.sql.DataSource;

import org.apache.commons.lang.exception.ExceptionUtils;
import org.kuali.rice.core.api.config.property.ConfigContext;
import org.kuali.rice.core.api.util.RiceConstants;
import org.springframework.jdbc.core.ConnectionCallback;
import org.springframework.jdbc.core.JdbcTemplate;

/**
 * As part of exercise-rule, this class creates the remaining propositions for
 * the rule which couldn't be created using the user interface.
 */
public class RuleCreator {

	public static String createRemainingRules() {
		final StringBuilder builder = new StringBuilder();

		// first let's get the datasource
		DataSource dataSource = (DataSource)ConfigContext.getCurrentContextConfig().getObject(RiceConstants.NON_TRANSACTIONAL_DATASOURCE_OBJ);
		if (dataSource == null) {
			throw new IllegalArgumentException("Failed to locate datasource");
		}

		JdbcTemplate template = new JdbcTemplate(dataSource);
		template.execute(new ConnectionCallback<Object>() {			
			public Object doInConnection(Connection connection) throws SQLException {
			
				boolean autoCommit = connection.getAutoCommit();
				connection.setAutoCommit(false);
				try {
				
					builder.append("Check for existence of 'Check Instances on Loan' rule...");
					Statement statement = connection.createStatement();
					ResultSet resultSet = statement.executeQuery("select * from krms_rule_t where nmspc_cd = 'OLE' and nm = 'Check Instances on Loan'");
					if (!resultSet.next()) {
						throw new IllegalStateException("Failed to find rule with namespace code 'OLE' and name 'Check Instances on Loan'");
					} else {
						builder.append("done.\n");
					}
					String ruleId = resultSet.getString("RULE_ID");
					String currentPropId = resultSet.getString("PROP_ID");
					resultSet.close();
					statement.close();
					
					checkCurrentStateIsValid(builder, connection, ruleId);
					String wrapperPropId = createWrapperProposition(builder, connection, ruleId, currentPropId);
					reassembleCompoundPropositions(builder, connection, ruleId, currentPropId, wrapperPropId);
					assembleNewProposition(builder, connection, ruleId, wrapperPropId, 2, "staff", 60);
					assembleNewProposition(builder, connection, ruleId, wrapperPropId, 3, "grad", 40);
					assembleNewProposition(builder, connection, ruleId, wrapperPropId, 4, "undergrad", 20);
					assembleNewProposition(builder, connection, ruleId, wrapperPropId, 5, "resident", 10);
				
					connection.commit();
				} catch (Exception e) {
					connection.rollback();
					builder.append("\n");
					builder.append(ExceptionUtils.getStackTrace(e));
				} finally {
					connection.setAutoCommit(autoCommit);
				}
				return null;
			}
		});		
		return builder.toString();
	}
	
	private static void checkCurrentStateIsValid(StringBuilder builder, Connection connection, String ruleId) throws SQLException {
		builder.append("Checking that you haven't run this before...");
		Statement statement = connection.createStatement();
		ResultSet resultSet = statement.executeQuery("select count(*) from krms_prop_t where rule_id = '" + ruleId + "'");
		resultSet.next();
		int count = resultSet.getInt(1);
		if (count != 3) {
			throw new IllegalStateException("Are you sure you haven't run this already?  I found more than 3 existing propositions for ruleId=" + ruleId + ", I instead found " + count + " propositions.");
		}
		resultSet.close();
		statement.close();
		builder.append("done.\n");
	}
	
	private static String createWrapperProposition(StringBuilder builder, Connection connection, String ruleId, String currentPropId) throws SQLException {
		builder.append("Inserting top-level wrapper proposition...");
		String nextPropId = getNextPropId(connection);
		Statement statement = connection.createStatement();
		statement.execute("insert into krms_prop_t (prop_id, desc_txt, dscrm_typ_cd, cmpnd_op_cd, rule_id) " + 
				"values('" + nextPropId + "', 'Check Instances on Loan', 'C', '|', '" + ruleId + "')");
		statement.close();
		builder.append("done, proposition id is " + nextPropId + ".\n");
		return nextPropId;
	}
	
	private static void reassembleCompoundPropositions(StringBuilder builder, Connection connection, String ruleId, String originalWrapperPropId, String newWrapperPropId) throws SQLException {
		builder.append("Reassembling compound propositions...");
		Statement statement = connection.createStatement();
		int rowsUpdated = statement.executeUpdate("update krms_rule_t set prop_id='" + newWrapperPropId + "' where rule_id='" + ruleId + "'");
		if (rowsUpdated != 1) {
			throw new IllegalStateException("Failed to update rule in order to point to new compound proposition.");
		}
		statement.execute("insert into krms_cmpnd_prop_props_t (cmpnd_prop_id, prop_id) values ('" + newWrapperPropId + "', '" + originalWrapperPropId + "')");
		rowsUpdated = statement.executeUpdate("update krms_prop_t set cmpnd_seq_no = 1 where prop_id = '" + originalWrapperPropId + "'");
		if (rowsUpdated != 1) {
			throw new IllegalStateException("Failed to set sequence order on original compound proposition.");
		}
		statement.close();
		builder.append("done.\n");
	}
	
	private static void assembleNewProposition(StringBuilder builder, Connection connection, String ruleId, String wrapperPropId, int sequenceNumber, String affiliation, int instancesOnLoan) throws SQLException {
		builder.append("Assembling new proposition for affiliation = '" + affiliation + "' and instances on loan < " + instancesOnLoan + "...");
		Statement statement = connection.createStatement();
		
		String affiliationTermId = getAffiliationTermId(connection);
		String instanceTermId = getInstanceTermId(connection);
		
		// create affiliation proposition
		String affilationPropId = getNextPropId(connection);
		statement.execute("insert into krms_prop_t (prop_id, desc_txt, dscrm_typ_cd, rule_id, cmpnd_seq_no) " +
				"values ('" + affilationPropId + "', 'Patron is " + affiliation + "', 'S', '" + ruleId + "', 1)");
		String parmId = getNextPropParmId(connection);
		statement.execute("insert into krms_prop_parm_t (prop_parm_id, prop_id, parm_val, parm_typ_cd, seq_no) " +
				"values ('" + parmId + "', '" + affilationPropId + "', '" + affiliationTermId + "', 'T', 0)");
		parmId = getNextPropParmId(connection);
		statement.execute("insert into krms_prop_parm_t (prop_parm_id, prop_id, parm_val, parm_typ_cd, seq_no) " +
				"values ('" + parmId + "', '" + affilationPropId + "', '=', 'O', 2)");
		parmId = getNextPropParmId(connection);
		statement.execute("insert into krms_prop_parm_t (prop_parm_id, prop_id, parm_val, parm_typ_cd, seq_no) " +
				"values ('" + parmId + "', '" + affilationPropId + "', '" + affiliation + "', 'C', 1)");
		
		
		// create instance on loan proposition
		String instancesPropId = getNextPropId(connection);
		statement.execute("insert into krms_prop_t (prop_id, desc_txt, dscrm_typ_cd, rule_id, cmpnd_seq_no) " +
				"values ('" + instancesPropId + "', 'instances on loan < " + instancesOnLoan + "', 'S', '" + ruleId + "', 2)");
		parmId = getNextPropParmId(connection);
		statement.execute("insert into krms_prop_parm_t (prop_parm_id, prop_id, parm_val, parm_typ_cd, seq_no) " +
				"values ('" + parmId + "', '" + instancesPropId + "', '" + instanceTermId + "', 'T', 0)");
		parmId = getNextPropParmId(connection);
		statement.execute("insert into krms_prop_parm_t (prop_parm_id, prop_id, parm_val, parm_typ_cd, seq_no) " +
				"values ('" + parmId + "', '" + instancesPropId + "', '<', 'O', 2)");
		parmId = getNextPropParmId(connection);
		statement.execute("insert into krms_prop_parm_t (prop_parm_id, prop_id, parm_val, parm_typ_cd, seq_no) " +
				"values ('" + parmId + "', '" + instancesPropId + "', '" + instancesOnLoan + "', 'C', 1)");
		
		// create the parent compound proposition to "and" them together
		String parentPropId = getNextPropId(connection);
		statement.execute("insert into krms_prop_t (prop_id, desc_txt, dscrm_typ_cd, cmpnd_op_cd, rule_id, cmpnd_seq_no) " +
				"values ('" + parentPropId + "', '" + affiliation + "', 'C', '&', '" + ruleId + "', " + sequenceNumber + ")");
		
		// now assemble these together into a compound proposition
		statement.execute("insert into krms_cmpnd_prop_props_t (cmpnd_prop_id, prop_id) values ('" + parentPropId + "', '" + affilationPropId + "')");
		statement.execute("insert into krms_cmpnd_prop_props_t (cmpnd_prop_id, prop_id) values ('" + parentPropId + "', '" + instancesPropId + "')");
		
		// now add the parent prop as a child of the wrapper prop
		statement.execute("insert into krms_cmpnd_prop_props_t (cmpnd_prop_id, prop_id) values ('" + wrapperPropId + "', '" + parentPropId + "')");
		
		statement.close();
		builder.append("done.\n");
	}
	
	private static String getAffiliationTermId(Connection connection) throws SQLException {
		Statement statement = connection.createStatement();
		ResultSet resultSet = statement.executeQuery("select term_spec_id from krms_term_spec_t where nm = 'Affiliation'");
		resultSet.next();
		String termSpecId = resultSet.getString(1);
		resultSet.close();
		resultSet = statement.executeQuery("select term_id from krms_term_t where term_spec_id = '" + termSpecId + "'");
		resultSet.next();
		String termId = resultSet.getString(1);
		statement.close();
		return termId;
	}
	
	private static String getInstanceTermId(Connection connection) throws SQLException {
		Statement statement = connection.createStatement();
		ResultSet resultSet = statement.executeQuery("select term_spec_id from krms_term_spec_t where nm = 'Number of Instances on Loan'");
		resultSet.next();
		String termSpecId = resultSet.getString(1);
		resultSet.close();
		resultSet = statement.executeQuery("select term_id from krms_term_t where term_spec_id = '" + termSpecId + "'");
		resultSet.next();
		String termId = resultSet.getString(1);
		statement.close();
		return termId;
	}
	
	private static String getNextPropId(Connection connection) throws SQLException {
		return getNextId(connection, "krms_prop_s");
	}
	
	private static String getNextPropParmId(Connection connection) throws SQLException {
		return getNextId(connection, "krms_prop_parm_s");
	}
	
	private static String getNextId(Connection connection, String sequenceName) throws SQLException {
		Statement statement = connection.createStatement();
		statement.execute("insert into " + sequenceName + " values(NULL)");
		ResultSet resultSet = statement.executeQuery("select last_insert_id()");
		resultSet.next();
		int nextId = resultSet.getInt(1);
		resultSet.close();
		statement.close();
		return nextId + "";
	}
	
}
