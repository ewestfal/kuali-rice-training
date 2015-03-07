package trnapp.kew;

import java.util.ArrayList;
import java.util.List;

import org.kuali.rice.kew.api.identity.Id;
import org.kuali.rice.kew.api.identity.PrincipalName;
import org.kuali.rice.kew.api.rule.RoleName;
import org.kuali.rice.kew.engine.RouteContext;
import org.kuali.rice.kew.routeheader.DocumentContent;
import org.kuali.rice.kew.rule.AbstractRoleAttribute;
import org.kuali.rice.kew.rule.ResolvedQualifiedRole;

public class BookNotificationRoleAttribute extends AbstractRoleAttribute {

	private static final long serialVersionUID = 8706769956777299975L;

	@Override
	public List<RoleName> getRoleNames() {
		List<RoleName> roleNames = new ArrayList<RoleName>();
		roleNames.add(new RoleName(getClass().getName(), "BookNotify", "Book Notify")); 
		return roleNames;
	}

	@Override
	public List<String> getQualifiedRoleNames(String roleName, DocumentContent docContent) {
		List<String> qualifiedRoleNames = new ArrayList<String>();
		
		// since there are no "qualifications" within this role just return a list of principal names
		// that we will convert into the resolved role
		//
		// note, we are hard-coding these here, but one could interface with an external system
		// or read from a database using document content XML which is passed into this method
		
		qualifiedRoleNames.add("fran");
		qualifiedRoleNames.add("frank");
		qualifiedRoleNames.add("fred");
		
		return qualifiedRoleNames;
	}

	@Override
	public ResolvedQualifiedRole resolveQualifiedRole(RouteContext context, String roleName, String qualifiedRole) {
		List<Id> recipients = new ArrayList<Id>();
		recipients.add(new PrincipalName(qualifiedRole));
		
		ResolvedQualifiedRole role = new ResolvedQualifiedRole();
		role.setAnnotation("Generating notification to " + qualifiedRole);
		role.setRecipients(recipients);
		
		return role;
	}

}
