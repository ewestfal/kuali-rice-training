package trnapp.krms;

import org.kuali.rice.krms.api.repository.action.ActionDefinition;
import org.kuali.rice.krms.framework.engine.Action;
import org.kuali.rice.krms.impl.type.ActionTypeServiceBase;

public class CanCirculateActionTypeService extends ActionTypeServiceBase {

	@Override
	public Action loadAction(ActionDefinition actionDefinition) {
		return new CanCirculateAction();
	}
	
}
