package trnapp.krms;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

import org.kuali.rice.core.api.uif.RemotableAttributeError;
import org.kuali.rice.krms.api.repository.action.ActionDefinition;
import org.kuali.rice.krms.framework.engine.Action;
import org.kuali.rice.krms.impl.type.ActionTypeServiceBase;

public class LoanPeriodActionTypeService extends ActionTypeServiceBase {
	
	@Override
	public List<RemotableAttributeError> validateAttributes(String krmsTypeId,
			Map<String, String> attributes) {
		String value = attributes.get("numberOfDays");
		List<String> errors = new ArrayList<String>();
		if (value == null || "".equals(value.trim())) {
			errors.add("Number of days is required");
		} else {
			try {
				int intValue = Integer.parseInt(value);
				if (intValue < 0) {
					errors.add("Number of days must be a non-negative number");
				}
			} catch (NumberFormatException e) {
				errors.add("Value is not a valid number");
			}
		}
		if (!errors.isEmpty()) {
			RemotableAttributeError.Builder errorBuilder =
					RemotableAttributeError.Builder.create("numberOfDays", errors);
			return Collections.singletonList(errorBuilder.build());
		} else {
			return Collections.emptyList();
		}
	}
	
	@Override
	public Action loadAction(ActionDefinition actionDefinition) {
		String numberOfDaysValue = actionDefinition.getAttributes().get("numberOfDays");
		int numberOfDays = Integer.parseInt(numberOfDaysValue);
		return new LoanPeriodAction(numberOfDays);
	}
	
}
