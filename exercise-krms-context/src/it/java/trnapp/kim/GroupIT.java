package trnapp.kim;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.kuali.rice.kim.api.group.Group;
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
		
		String namespace = "KR-WKFLW";
		String groupName = "WorkflowAdmin";
		
		Group group = groupService.getGroupByNamespaceCodeAndName(namespace, groupName);
		assertNotNull(group);
		assertNotNull(group.getId());
		assertEquals(groupName, group.getName());
		assertEquals(namespace, group.getNamespaceCode());
		assertEquals(0, group.getAttributes().size());
		assertTrue(group.isActive());
		
	}
	
	@Test
	public void testGetGroupMemberPrincipalIds() throws Exception {

		// write a test which uses the getGroupMemberPrincipalIds to get a list of all of the
		// principal ids of members on a group, as follows
		//
		// Group group = groupService.getGroupByNamespaceCodeAndName("KR-WKFLW", "WorkflowAdmin");
		// List<String> membersPrincipalIds = groupService.getMemberPrincipalIds(group.getId());
		// ...do some assertions...

		String namespace = "KR-WKFLW";
		String groupName = "WorkflowAdmin";
		
		Group group = groupService.getGroupByNamespaceCodeAndName(namespace, groupName);
		List<String> memberPrincipalIds = groupService.getMemberPrincipalIds(group.getId());
		assertEquals(2, memberPrincipalIds.size());
		
		boolean foundAdmin = memberPrincipalIds.contains("admin");
		boolean foundNotSys = memberPrincipalIds.contains("notsys");
		
		assertTrue("WorkflowAdmin should contain admin as a member.", foundAdmin);
		assertTrue("WorkflowAdmin should contain notsys as a member.", foundNotSys);

	}
	
	@Test
	public void testGetGroupIdsForPrincipal() throws Exception {
		
		// write a test which uses the getGroupIdsByPrincipalId method to verify the groups that
		// the admin principal is a member of.  This should be:
		//      * KR-WKFLW : WorkflowAdmin 
		//      * KR-WKFLW : NotificationAdmin
		
		List<String> groupIds = groupService.getGroupIdsByPrincipalId("admin");
		assertEquals("admin should be a member of 2 groups", 2, groupIds.size());
		
		boolean foundWorkflowAdmin = false;
		boolean foundNotificationAdmin = false;
		for (String groupId : groupIds) {
			Group group = groupService.getGroup(groupId);
			assertNotNull(group);
			if ("WorkflowAdmin".equals(group.getName())) {
				foundWorkflowAdmin = true;
			} else if ("NotificationAdmin".equals(group.getName())) {
				foundNotificationAdmin = true;
			}
		}
		assertTrue(foundWorkflowAdmin);
		assertTrue(foundNotificationAdmin);
		
	}
	
	@Test
	public void testIsMemberOfGroup() throws Exception {
				
		// write a test which uses the isMemberOfGroup method to verify that the admin principal
		// is a member of the groups:
		//      * KR-WKFLW : WorkflowAdmin 
		//      * KR-WKFLW : NotificationAdmin 
		
		String namespace = "KR-WKFLW";
		String groupName1 = "WorkflowAdmin";
		String groupName2 = "NotificationAdmin";

		Group group1 = groupService.getGroupByNamespaceCodeAndName(namespace, groupName1);
		assertTrue("admin should be member of WorkflowAdmin group", groupService.isMemberOfGroup("admin", group1.getId()));
		
		Group group2 = groupService.getGroupByNamespaceCodeAndName(namespace, groupName2);
		assertTrue("admin should be member of NotificationAdmin group", groupService.isMemberOfGroup("admin", group2.getId()));
		
	}
	
}
