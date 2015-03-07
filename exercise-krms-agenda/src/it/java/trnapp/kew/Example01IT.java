package trnapp.kew;

import org.junit.Test;
import org.kuali.rice.kew.api.WorkflowDocument;
import org.kuali.rice.kew.api.WorkflowDocumentFactory;
import org.kuali.rice.kew.api.action.ActionRequestType;
import org.kuali.rice.kew.api.action.AdHocToGroup;
import org.kuali.rice.kew.api.action.AdHocToPrincipal;
import org.kuali.rice.kim.api.group.Group;
import org.kuali.rice.kim.api.services.KimApiServiceLocator;

import trnapp.BaseKewITCase;

public class Example01IT extends BaseKewITCase {

	private static final String ADMIN_PID = "admin";
	private static final String USER1_PID = "user1";
	private static final String NOTSYS_PID = "notsys";
	
	private static final String ADHOC_EXAMPLE_DOC = "AdHocExample";

	@Test
	public void testAdHocExample_AdHocToPrincipal() throws Exception {
		
		/**
		 *  Create a new document and then route it, should go directly to final because of no approval requests being generated
		 */
		
		WorkflowDocument document = WorkflowDocumentFactory.createDocument(ADMIN_PID, ADHOC_EXAMPLE_DOC);
		assertNotNull("Document should have a document id", document.getDocumentId());
		document.route("");
		
		assertTrue("Document should be final since no requests generated.", document.isFinal());
		
		/**
		 *  Create a new document but "adhoc" it to user1
		 */
		
		document = WorkflowDocumentFactory.createDocument(ADMIN_PID, ADHOC_EXAMPLE_DOC);
		AdHocToPrincipal.Builder adHocBuilder = AdHocToPrincipal.Builder.create(ActionRequestType.APPROVE, null, USER1_PID);
		adHocBuilder.setForceAction(false);		
		document.adHocToPrincipal(adHocBuilder.build(), "");
		document.route("");
		
		// now the document should have an outstanding approval request to user1 and should be ENROUTE
		
		assertTrue(document.isEnroute());
		document.switchPrincipal(USER1_PID);
		assertTrue(document.isApprovalRequested());

		// now approve as user1
		
		document.approve("");
		
		// all approvals satisfied, so document should now be final
		
		assertTrue(document.isFinal());
		
	}
	
	@Test
	public void testAdHocExample_AdHocToGroup() throws Exception {
		
		/**
		 *  Create a new document and then adhoc route it to the "KR-WKFLW : Workflow Admin" group
		 */
		
		WorkflowDocument document = WorkflowDocumentFactory.createDocument(ADMIN_PID, ADHOC_EXAMPLE_DOC);
		
		Group adminGroup = KimApiServiceLocator.getGroupService().getGroupByNamespaceCodeAndName("KR-WKFLW", "WorkflowAdmin");
		AdHocToGroup.Builder adHocBuilder = AdHocToGroup.Builder.create(ActionRequestType.APPROVE, null, adminGroup.getId());
		document.adHocToGroup(adHocBuilder.build(), "");
		
		// note the use of the "true" as the last parameter above which is the "forceAction" parameter.  This means that even
		// though admin is a member of the WorkflowAdmin group, the document will "force" admin to take action again instead of
		// counting the prior "approval" (which is implicit in routing the document) as satisfying the new adhoc request.
		
		document.route("");
		
		// document should be ENROUTE now
		
		assertTrue(document.isEnroute());
		
		// since both admin and notsys are members of the WorkflowAdmin workgroup, they should both have approval requests
		
		assertTrue("admin should have approval request", document.isApprovalRequested());
		
		// load the document as notsys
		
		document.switchPrincipal(NOTSYS_PID);
		assertTrue("notsys should have approval request", document.isApprovalRequested());
		
		// should be able to approve as either admin or user1 now and the document will go final
		// when routing to Groups, only one member of the group is required to approve the document
		
		document.approve("");
		
		// all approvals satisfied, so document should now be final
		
		assertTrue(document.isFinal());
		
	}
	
}
