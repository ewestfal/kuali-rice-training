package trnapp.bookstore.department;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.kuali.rice.core.api.membership.MemberType;
import org.kuali.rice.kim.api.role.RoleMembership;
import org.kuali.rice.krad.service.KRADServiceLocator;

public class DepartmentHeadDerivedRoleTypeService extends DepartmentRoleTypeService {

	@Override
	public boolean isDerivedRoleType() {
	    return true;
	}
	@Override
	public List<RoleMembership> getRoleMembersFromDerivedRole(
	        String namespaceCode, String roleName,
	        Map<String, String> qualification) {
	    String departmentCode = null;
	    if (qualification != null) {
	        departmentCode = qualification.get("department");
	    }
	    List<Department> departmentsToSearch = new ArrayList<Department>();
	    if (departmentCode == null) {
	        departmentsToSearch.addAll(
	                KRADServiceLocator.getBusinessObjectService().findAll(Department.class));
	    } else {
	        Department dept = getDepartmentService().getDepartmentByCode(departmentCode);
	        departmentsToSearch = getDepartmentHierarchy(dept);
	    }
	    List<RoleMembership> members = new ArrayList<RoleMembership>();
	    for (Department department : departmentsToSearch) {
	        if (department.getDepartmentHeadPrincipalId() != null) {
	            RoleMembership member = RoleMembership.Builder.create(null,
	                    null,
	                    department.getDepartmentHeadPrincipalId(),
	                    MemberType.PRINCIPAL,
	                    null).build();
	            members.add(member);
	        }
	    }
	    return members;
	}

	private List<Department> getDepartmentHierarchy(Department dept) {
	    List<Department> depts = new ArrayList<Department>();
	    if (dept != null) {
	        depts.add(dept);
	        List<Department> children = getDepartmentService().getChildDepartments(dept.getCode());
	        depts.addAll(children);
	    }
	    return depts;
	}

	
}
