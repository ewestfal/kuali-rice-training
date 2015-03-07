package trnapp.krms;

import java.util.HashMap;
import java.util.Map;

import org.kuali.ole.Patron;
import org.kuali.rice.kew.engine.RouteContext;
import org.kuali.rice.kew.framework.support.krms.RulesEngineExecutor;
import org.kuali.rice.krms.api.engine.Engine;
import org.kuali.rice.krms.api.engine.EngineResults;
import org.kuali.rice.krms.api.engine.Facts;
import org.kuali.rice.krms.api.engine.SelectionCriteria;
import org.w3c.dom.Element;

/**
 * This class parses incoming XML from the workflow engine in the following form:
 * 
 * <patron>affiliation,standing,numOnLoan</patron>
 * 
 * It then parses that XML and creates a Patron object from it.  It then selects
 * the "Circulation Policy" agenda and passes the given Patron as a fact to the
 * rules engine.
 *
 */
public class PatronRulesEngineExecutor implements RulesEngineExecutor {

	@Override
	public EngineResults execute(RouteContext routeContext, Engine engine) {
		Patron patron = parsePatron(routeContext);
		Facts.Builder factBuilder = Facts.Builder.create();
		factBuilder.addFact("Patron", patron);
		return engine.execute(createSelectCriteria(), factBuilder.build(), null);
	}
	
	/**
	 * The xml content will be in application content in the form:
	 * 
	 * <patron>affiliation,standing,numOnLoan</patron>
	 */
	private Patron parsePatron(RouteContext routeContext) {
		Element content = routeContext.getDocumentContent().getApplicationContent();
		String patronData = content.getTextContent();
		String[] data = patronData.split(",");
		String affiliation = data[0];
		boolean standing = Boolean.valueOf(data[1]);
		int numOnLoan = Integer.parseInt(data[2]);
		return new Patron(affiliation, standing, numOnLoan);
	}
	
	private SelectionCriteria createSelectCriteria() {
		Map<String, String> contextSelector = new HashMap<String, String>();
		contextSelector.put("namespaceCode", "OLE");
		contextSelector.put("name", "Kuali OLE");

		Map<String, String> agendaSelector = new HashMap<String, String>();
		agendaSelector.put("name", "Circulation Policy");
		
		return SelectionCriteria.createCriteria(null, contextSelector, agendaSelector);
	}

}
