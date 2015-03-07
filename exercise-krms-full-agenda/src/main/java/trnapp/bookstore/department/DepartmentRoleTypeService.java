package trnapp.bookstore.department;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.kuali.rice.core.api.uif.RemotableAttributeError;
import org.kuali.rice.kim.api.type.KimTypeAttribute;
import org.kuali.rice.kns.kim.role.RoleTypeServiceBase;

public class DepartmentRoleTypeService extends RoleTypeServiceBase {

	private DepartmentService departmentService;
	
	public void setDepartmentService(DepartmentService departmentService) {
		this.departmentService = departmentService;
	}
	
	public DepartmentService getDepartmentService() {
		return departmentService;
	}
	
	@Override
	protected List<RemotableAttributeError> validateNonDataDictionaryAttribute(
	        KimTypeAttribute attr, String key, String value) {
	    List<RemotableAttributeError> errors = new ArrayList<RemotableAttributeError>();
	    if ("department".equals(key)) {
	        if (value == null || "".equals(value.trim())) {
	            RemotableAttributeError.Builder errorBuilder =
	                    RemotableAttributeError.Builder.create(key, "Department is required.");
	            errors.add(errorBuilder.build());
	        } else {
	            Department department = departmentService.getDepartmentByCode(value);
	            if (department == null) {
	                RemotableAttributeError.Builder errorBuilder =
	                        RemotableAttributeError.Builder.create(key,
	                                "Failed to locate department code '" + value + "'");
	                errors.add(errorBuilder.build());
	            }
	        }
	    }
	    return errors;
	}
	
	@Override
	protected boolean performMatch(Map<String, String> inputAttributes,
	        Map<String, String> storedAttributes) {
	    if ( inputAttributes == null || storedAttributes == null ) {
	        return true;
	    }
	    // we know that we only have one qualifier, the "department" qualifier
	    String givenDepartment = inputAttributes.get("department");
	    String roleDepartment = storedAttributes.get("department");     
	    // if they are an exact match, return true
	    if (roleDepartment.equalsIgnoreCase(givenDepartment)) {
	        return true;
	    }
	    // otherwise, check the hierarchy
	    List<Department> childDepartments = 
	            departmentService.getChildDepartments(givenDepartment);
	    for (Department department : childDepartments) {
	        if (department.getCode().equalsIgnoreCase(roleDepartment)) {
	            return true;
	        }
	    }
	    return false;
	}
	
}
