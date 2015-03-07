package trnapp.krms;

import java.util.HashMap;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.kuali.rice.krms.api.KrmsApiServiceLocator;
import org.kuali.rice.krms.api.engine.Engine;
import org.kuali.rice.krms.api.engine.EngineResults;
import org.kuali.rice.krms.api.engine.Facts;
import org.kuali.rice.krms.api.engine.SelectionCriteria;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import trnapp.BaseITCase;

public class RuleIT extends BaseITCase {

	private static final String NAMESPACE_CODE_SELECTOR = "namespaceCode";
	private static final String NAME_SELECTOR = "name";
	
	@Test
	public void testRulesEngine() throws Exception {		
		
		SelectionCriteria criteria =
				SelectionCriteria.createCriteria(null, selectOleContext(), selectPolicyCirculationAgenda());
		
		Facts.Builder factBuilder = Facts.Builder.create();
		// TODO - build some facts
		
		EngineResults results = getEngine().execute(criteria, factBuilder.build(), null);
		
		assertFalse("Results list should not be empty.", results.getAllResults().isEmpty());
	}
	
	protected Engine getEngine() {
		return KrmsApiServiceLocator.getEngine();
	}
	
	protected Map<String, String> selectOleContext() {
		Map<String, String> selector = new HashMap<String, String>();

		// TODO - add code here to select the appropriate context!
		
		return selector;
	}
	
	protected Map<String, String> selectPolicyCirculationAgenda() {
		Map<String, String> selector = new HashMap<String, String>();
		
		// TODO... add code here to select the appropriate agenda! 
		
		return selector;
	}
	
	
	
}
