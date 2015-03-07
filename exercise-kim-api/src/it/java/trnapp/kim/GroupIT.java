package trnapp.kim;

import org.junit.Before;
import org.junit.Test;
import org.kuali.rice.kim.api.group.GroupService;
import org.kuali.rice.kim.api.services.KimApiServiceLocator;

import trnapp.BaseITCase;

public class GroupIT extends BaseITCase {

	private GroupService groupService;
	
	@Before
	public void setUp() throws Exception {
		groupService = KimApiServiceLocator.getGroupService();
	}

	@Test
	public void testGetGroup() throws Exception {
	
		// write a test which uses the getGroupByName method to test fetching a group and testing various
		// attributes on it, as follows:
		//
		// Group group = groupService.getGroupByNamespaceCodeAndName("KR-WKFLW", "WorkflowAdmin");
		// ...do some assertions...
		
	}
	
	@Test
	public void testGetGroupMemberPrincipalIds() throws Exception {

		// write a test which uses the getGroupMemberPrincipalIds to get a list of all of the
		// principal ids of members on a group, as follows
		//
		// Group group = groupService.getGroupByNamespaceCodeAndName("KR-WKFLW", "WorkflowAdmin");
		// List<String> membersPrincipalIds = groupService.getMemberPrincipalIds(group.getId());
		// ...do some assertions...

		
	}
	
	@Test
	public void testGetGroupIdsForPrincipal() throws Exception {
		
		// write a test which uses the getGroupIdsByPrincipalId method to verify the groups that
		// the admin principal is a member of.  This should be:
		//      * KR-WKFLW : WorkflowAdmin 
		//      * KR-WKFLW : NotificationAdmin 
		
	}
	
	@Test
	public void testIsMemberOfGroup() throws Exception {
				
		// write a test which uses the isMemberOfGroup method to verify that the admin principal
		// is a member of the groups:
		//      * KR-WKFLW : WorkflowAdmin 
		//      * KR-WKFLW : NotificationAdmin 
		
	}
	
}
