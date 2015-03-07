package trnapp.kim;

import java.util.HashMap;
import java.util.Map;

import org.junit.Before;
import org.junit.Test;
import org.kuali.rice.kim.api.permission.PermissionService;
import org.kuali.rice.kim.api.services.KimApiServiceLocator;

import trnapp.BaseITCase;

public class PermissionIT extends BaseITCase {

	private PermissionService permissionService;
	
	@Before
	public void setUp() throws Exception {
		permissionService = KimApiServiceLocator.getPermissionService();
	}

	@Test
	public void testIsAuthorized_AssignRole_TRNAPP() throws Exception {
	
		String adminPrincpalId = "admin";
		String assignRoleNamespace = "KR-IDM";
		String assignRoleName = "Assign Role";
		Map<String, String> permissionDetails = new HashMap<String, String>();
		permissionDetails.put("namespaceCode", "TRNAPP");
		Map<String, String> roleQualifications = new HashMap<String, String>();
		
		boolean isAuthorized = permissionService.isAuthorizedByTemplate(adminPrincpalId, assignRoleNamespace, assignRoleName, permissionDetails, roleQualifications);
		
		// admin is member of KR-SYS : Technical Administrator which we assigned this permission in exercise 16
		assertTrue("Principal admin should be authorized to Assign Role for namespaceCode=TRNAPP", isAuthorized);
		
	}
	
	@Test
	public void testIsAuthorized_GrantPermission_TRNAPP() throws Exception {

		String adminPrincpalId = "admin";
		String grantPermissionNamespace = "KR-IDM";
		String grantPermissionName = "Grant Permission";
		Map<String, String> permissionDetails = new HashMap<String, String>();
		permissionDetails.put("namespaceCode", "TRNAPP");
		Map<String, String> roleQualifications = new HashMap<String, String>();
		
		boolean isAuthorized = permissionService.isAuthorizedByTemplate(adminPrincpalId, grantPermissionNamespace, grantPermissionName, permissionDetails, roleQualifications);
		
		// admin is member of KR-SYS : Technical Administrator which we assigned this permission in exercise 16
		assertTrue("Principal admin should be authorized to Assign Role for namespaceCode=TRNAPP", isAuthorized);
		
		
	}
	
	@Test
	public void testIsAuthorized_InitiateDocument_BookOrder() throws Exception {
		
		// write a test which verifies that user1 is authorized to Initiate Documents of type "BookOrderDocumentType"
		// recall that the permission detail we used for this when we created our permission was documentTypeName=BookOrderDocumentType
		
		String grantPermissionNamespace = "KR-SYS";
		String grantPermissionName = "Initiate Document";
		Map<String, String> permissionDetails = new HashMap<String, String>();
		permissionDetails.put("documentTypeName", "BookOrderDocumentType");
		Map<String, String> roleQualifications = new HashMap<String, String>();
		
		boolean isAuthorized = permissionService.isAuthorizedByTemplate("user1", grantPermissionNamespace, grantPermissionName, permissionDetails, roleQualifications);
		assertTrue("Principal user1 should be authorized to Initiate Document for documentTypeName=BookOrderDocumentType", isAuthorized);
		
		// now check someone who should NOT be authorized
		isAuthorized = permissionService.isAuthorizedByTemplate("admin", grantPermissionNamespace, grantPermissionName, permissionDetails, roleQualifications);
		assertFalse("Principal admin should NOT be authorized to Initiate Document for documentTypeName=BookOrderDocumentType", isAuthorized);

	}
	
}
