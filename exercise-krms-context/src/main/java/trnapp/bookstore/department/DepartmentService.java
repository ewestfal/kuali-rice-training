package trnapp.bookstore.department;

import java.util.List;

/**
 * A service which can be used to retrieve information about Departments and
 * their associated hierarchy.
 */
public interface DepartmentService {

	Department getDepartmentByCode(String departmentCode);
	
	List<Department> getChildDepartments(String departmentCode);
	
}
