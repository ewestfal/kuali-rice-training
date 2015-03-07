package trnapp.krms;

import org.junit.Before;
import org.junit.Test;
import org.kuali.rice.core.api.config.property.ConfigContext;
import org.kuali.rice.kew.api.WorkflowDocument;
import org.kuali.rice.kew.api.WorkflowDocumentFactory;
import org.kuali.rice.ksb.util.KSBConstants;

import trnapp.BaseITCase;

public class KewKrmsIT extends BaseITCase {
	
	@Before
	public void switchKewToSyncMode() {
		ConfigContext.getCurrentContextConfig().putProperty(KSBConstants.Config.MESSAGE_DELIVERY, KSBConstants.MESSAGING_SYNCHRONOUS);
	}
	
	@Test
	public void testPeopleFlowApproval() {
		WorkflowDocument document = WorkflowDocumentFactory.createDocument("admin", "KewKrmsTest");
		document.setApplicationContent("<patron>faculty,true,10</patron>");
		document.route("");
		
		// document should be ENROUTE
		assertTrue(document.isEnroute());
		
		// document should be routed to user1 for approval
		document.switchPrincipal("user1");
		assertTrue(document.isApprovalRequested());
		document.approve("Approving as user1");

		// document should still be ENROUTE
		assertTrue(document.isEnroute());
		
		// document should be routed to user2 for approval now
		document.switchPrincipal("user2");
		assertTrue(document.isApprovalRequested());
		document.approve("Approving as user2");
		
		// all approvals are complete, document shoudl be final
		assertTrue(document.isFinal());
		
	}
	
	@Test
	public void testNoApprovals() {
		WorkflowDocument document = WorkflowDocumentFactory.createDocument("admin", "KewKrmsTest");
		document.setApplicationContent("<patron>faculty,false,10</patron>");
		document.route("");
		
		// since patron is not in good standing, the people flow action will not be triggered
		// so the document will route directly to final
		assertTrue(document.isFinal());
	}
		
}
