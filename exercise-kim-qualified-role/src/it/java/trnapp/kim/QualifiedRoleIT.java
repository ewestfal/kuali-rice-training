package trnapp.kim;

import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.Test;
import org.kuali.rice.kim.api.role.RoleMembership;
import org.kuali.rice.kim.api.role.RoleService;
import org.kuali.rice.kim.api.services.KimApiServiceLocator;

import trnapp.BaseITCase;

public class QualifiedRoleIT extends BaseITCase {
	
	@Test
	public void testGetRoleMembers() {
		
		// first, let's identify the Department Head role
		List<String> roleIds = getDepartmentHeadRoleId();
		
		// get all role members regardless of qualification by passing a null qualification map and check that there are 7 returned
		List<RoleMembership> roleMembers = getRoleService().getRoleMembers(roleIds, null);
		
		// TODO...test that 7 role members were returned
		
	}
	
	@Test
	public void testGetRoleMembers_hierarchy() {
		
		// first, let's identify the Department Head role
		List<String> roleIds = getDepartmentHeadRoleId();

		// next, let's check at every level in the hierarchy to ensure we are getting the proper numer returned
		Map<String, String> qualifier = new HashMap<String, String>();
		
		// check UNIV
		qualifier.put("department", "UNIV");
		List<RoleMembership> roleMembers = getRoleService().getRoleMembers(roleIds, qualifier);
		assertEquals(7, roleMembers.size());
		
		// check ECON
		// TODO...
		
		// check ENGL
		// TODO...
		
		// check FINA
		// TODO...
		
		// check FINA
		// TODO...

		// check FINA
		// TODO...
		
		// check BUSN
		// TODO...
		
		// check BCOM
		// TODO...
		
		// check MGMT
		// TODO...

		// check EMBA
		// TODO...
		
		// check an invalid department code, we should get back zero members
		// TODO...
		
	}
	
	private List<String> getDepartmentHeadRoleId() {
		String roleId = getRoleService().getRoleIdByNamespaceCodeAndName("TRNAPP", "Department Head");
		assertNotNull(roleId);
		return Collections.singletonList(roleId);
	}
	
	
	private RoleService getRoleService() {
		return KimApiServiceLocator.getRoleService();
	}
	
}
