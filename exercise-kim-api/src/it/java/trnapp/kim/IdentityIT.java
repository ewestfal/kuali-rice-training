package trnapp.kim;

import org.junit.Before;
import org.junit.Test;
import org.kuali.rice.kim.api.identity.IdentityService;
import org.kuali.rice.kim.api.identity.entity.EntityDefault;
import org.kuali.rice.kim.api.identity.name.EntityName;
import org.kuali.rice.kim.api.identity.principal.Principal;
import org.kuali.rice.kim.api.services.KimApiServiceLocator;

import trnapp.BaseITCase;

public class IdentityIT extends BaseITCase {

	private IdentityService identityService;
	
	@Before
	public void setUp() throws Exception {
		identityService = KimApiServiceLocator.getIdentityService();
	}
	
	@Test
	public void testPrincipals() throws Exception {
		
		String principalName = "admin";
		
		Principal adminPrincipal = identityService.getPrincipalByPrincipalName(principalName);
		assertNotNull("An admin principal should exist.", adminPrincipal);
		assertEquals("admin principal should have a principal name of admin", "admin", adminPrincipal.getPrincipalName());
		assertEquals("admin principal should have a principal id of admin", "admin", adminPrincipal.getPrincipalId());
		assertEquals("admin principal should have an entity id of 1100", "1100", adminPrincipal.getEntityId());
		
		// add your own test code here which gets the "user1" principal using identityService.getPrincipal(principalId)
		// test that the principal id and principal name for user1 are both "user1"
				
	}
	
	@Test
	public void testEntities() throws Exception {
		
		String principalName = "admin";
		
		EntityDefault adminEntity = identityService.getEntityDefaultByPrincipalName(principalName);
		assertNotNull("An entity should exist for principal name admin", adminEntity);
		
		EntityName adminName = adminEntity.getName();
		assertNotNull(adminName);
		assertEquals("admin", adminName.getFirstName());
				
		// add your own test code here which gets all names for the admin entity using
		// identityService.getEntityByPrincipalName.  This will provide all entity information,
		// not just the default, which will include a list of names for the entity
		//
		// Write assertions that assert
		// 1. The entity only has one name
		// 2. That the entity's name has it's default indicator set to true
		// 3. That the one has the same entityNameId as the one we fetched above using getEntityDefaultByPrincipalName
		
	}
	
}
