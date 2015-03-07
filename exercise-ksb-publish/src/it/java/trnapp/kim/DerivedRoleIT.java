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

public class DerivedRoleIT extends BaseITCase {
	
	@Test
	public void testGetRoleMembers() {
		
		// first, let's identify the Derived Department Head role
		List<String> roleIds = getDerivedDepartmentHeadRoleId();
		
		// get all role members regardless of qualification by passing a null qualification map and check that there are 7 returned
		List<RoleMembership> roleMembers = getRoleService().getRoleMembers(roleIds, null);
		assertEquals(7, roleMembers.size());
		
	}
	
	@Test
	public void testGetRoleMembers_hierarchy() {
		
		// first, let's identify the Derived Department Head role
		List<String> roleIds = getDerivedDepartmentHeadRoleId();

		// next, let's check at every level in the hierarchy to ensure we are getting the proper numer returned
		Map<String, String> qualifier = new HashMap<String, String>();
		
		// check UNIV
		qualifier.put("department", "UNIV");
		List<RoleMembership> roleMembers = getRoleService().getRoleMembers(roleIds, qualifier);
		assertEquals(7, roleMembers.size());
		
		// check ECON
		qualifier.put("department", "ECON");
		roleMembers = getRoleService().getRoleMembers(roleIds, qualifier);
		assertEquals(1, roleMembers.size());
		
		// check ENGL
		qualifier.put("department", "ENGL");
		roleMembers = getRoleService().getRoleMembers(roleIds, qualifier);
		assertEquals(1, roleMembers.size());
		
		// check FINA
		qualifier.put("department", "FINA");
		roleMembers = getRoleService().getRoleMembers(roleIds, qualifier);
		assertEquals(2, roleMembers.size());

		// check FINA
		qualifier.put("department", "FINH");
		roleMembers = getRoleService().getRoleMembers(roleIds, qualifier);
		assertEquals(1, roleMembers.size());

		// check FINA
		qualifier.put("department", "FINS");
		roleMembers = getRoleService().getRoleMembers(roleIds, qualifier);
		assertEquals(1, roleMembers.size());

		// check BUSN
		qualifier.put("department", "BUSN");
		roleMembers = getRoleService().getRoleMembers(roleIds, qualifier);
		assertEquals(3, roleMembers.size());

		// check BCOM
		qualifier.put("department", "BCOM");
		roleMembers = getRoleService().getRoleMembers(roleIds, qualifier);
		assertEquals(1, roleMembers.size());

		// check MGMT
		qualifier.put("department", "MGMT");
		roleMembers = getRoleService().getRoleMembers(roleIds, qualifier);
		assertEquals(1, roleMembers.size());

		// check EMBA
		qualifier.put("department", "EMBA");
		roleMembers = getRoleService().getRoleMembers(roleIds, qualifier);
		assertEquals(1, roleMembers.size());
		
		// check an invalid department code, we should get back zero members
		qualifier.put("department", "CSCI");
		roleMembers = getRoleService().getRoleMembers(roleIds, qualifier);
		assertEquals(0, roleMembers.size());
		
	}
	
	private List<String> getDerivedDepartmentHeadRoleId() {
		String roleId = getRoleService().getRoleIdByNamespaceCodeAndName("TRNAPP", "Department Head (Derived)");
		assertNotNull(roleId);
		return Collections.singletonList(roleId);
	}
	
	
	private RoleService getRoleService() {
		return KimApiServiceLocator.getRoleService();
	}
	
}
