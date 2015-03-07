package trnapp.bookstore.department;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Map;

import org.kuali.rice.krad.service.BusinessObjectService;
import org.kuali.rice.krad.service.KRADServiceLocator;

public class DepartmentServiceImpl implements DepartmentService {

	@Override
	public Department getDepartmentByCode(String departmentCode) {
		return getBusinessObjectService().findBySinglePrimaryKey(Department.class, departmentCode);
	}

	@Override
	public List<Department> getChildDepartments(String departmentCode) {
		List<Department> children = new ArrayList<Department>();
		Map<String,String> criteria = Collections.singletonMap("parentCode", departmentCode);
		Collection<Department> directChildren = getBusinessObjectService().findMatching(Department.class, criteria);
		if (directChildren != null) {
			children.addAll(directChildren);
			for (Department child : directChildren) {
				children.addAll(getChildDepartments(child.getCode()));
			}
		}
		return children;
	}
	
	private BusinessObjectService getBusinessObjectService() {
		return KRADServiceLocator.getBusinessObjectService();
	}

}
