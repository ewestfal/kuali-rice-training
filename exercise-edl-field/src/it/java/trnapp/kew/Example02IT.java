package trnapp.kew;

import org.junit.Test;
import org.kuali.rice.kew.api.WorkflowDocument;
import org.kuali.rice.kew.api.WorkflowDocumentFactory;

import trnapp.BaseKewITCase;

public class Example02IT extends BaseKewITCase {

	private static final String ADMIN_PID = "admin";
	private static final String USER1_PID = "user1";
	
	private static final String EXAMPLE_DOC = "SimpleRuleExample";

	@Test
	public void testSimpleRule_WithApproval() throws Exception {
		
		// Create a new document as then admin user and then route it, should immediately generate a request to user1
		
		WorkflowDocument document = WorkflowDocumentFactory.createDocument(ADMIN_PID, EXAMPLE_DOC);
		document.route("");
		
		assertTrue("Document should be ENROUTE.", document.isEnroute());
		
		// the document should now be in user1's action list
		
		document.switchPrincipal(USER1_PID);
		assertTrue("user1 should have an approval request", document.isApprovalRequested());
		
		// approval as user1, the document should go FINAL
		
		document.approve("Approving as user1");
		
		assertTrue("Document should be FINAL.", document.isFinal());
	}
	
	@Test
	public void testSimpleRule_BypassApproval() throws Exception {
		
		// in this test we will verify that <forceAction>false<forceAction> is working as advertised on our simple rule
		
		// initiate and route the document as user1 this time
		
		WorkflowDocument document = WorkflowDocumentFactory.createDocument(USER1_PID, EXAMPLE_DOC);
		document.route("Routing the document as user1");
		
		// user1's route document action should satisfy the subsequent approval that get's generated
		// that means the document should be FINAL!
		
		assertTrue("Document should be FINAL", document.isFinal());
				
	}
	
}
