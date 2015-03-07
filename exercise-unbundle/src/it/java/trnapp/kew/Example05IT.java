package trnapp.kew;

import java.util.List;

import org.junit.Test;
import org.kuali.rice.kew.api.WorkflowDocument;
import org.kuali.rice.kew.api.WorkflowDocumentFactory;
import org.kuali.rice.kew.api.document.DocumentStatus;
import org.kuali.rice.kew.framework.postprocessor.DocumentRouteStatusChange;

import trnapp.BaseKewITCase;
import trnapp.kew.TrackingPostProcessor;

public class Example05IT extends BaseKewITCase {

	private static final String ADMIN_PID = "admin";
	
	private static final String EXAMPLE_DOC = "PostProcessorExample";

	@Test
	public void testPostProcessor() throws Exception {
		
		// Route a new document as then admin user and attach XML to it to indicate we should follow Branch1
		
		TrackingPostProcessor.resetRouteStatusChanges();
		
		WorkflowDocument document = WorkflowDocumentFactory.createDocument(ADMIN_PID, EXAMPLE_DOC);
		document.route("");
		
		// use the TrackingPostProcessor to verify that the document transitioned through it's various statuses.
		// The status codes it transitions through are: I -> R -> P -> F
		// This corresponds to the following document statuses:
		//     Initiated -> Enroute -> Approved -> Processed -> Final
		// Status codes can be found using the getCode() method on org.kuali.rice.kew.api.document.DocumentStatus enumeration.	
		
		List<DocumentRouteStatusChange> routeStatusChanges = TrackingPostProcessor.getRouteStatusChanges();
		assertEquals("There should have been 3 status changes.", 3, routeStatusChanges.size());
		
		DocumentRouteStatusChange change1 = routeStatusChanges.get(0);
		assertEquals(DocumentStatus.INITIATED.getCode(), change1.getOldRouteStatus());
		assertEquals(DocumentStatus.ENROUTE.getCode(), change1.getNewRouteStatus());
		
		DocumentRouteStatusChange change2 = routeStatusChanges.get(1);
		assertEquals(DocumentStatus.ENROUTE.getCode(), change2.getOldRouteStatus());
		assertEquals(DocumentStatus.PROCESSED.getCode(), change2.getNewRouteStatus());

		DocumentRouteStatusChange change3 = routeStatusChanges.get(2);
		assertEquals(DocumentStatus.PROCESSED.getCode(), change3.getOldRouteStatus());
		assertEquals(DocumentStatus.FINAL.getCode(), change3.getNewRouteStatus());

	}	
	
}
