package trnapp.krms;

import org.kuali.rice.krms.api.engine.ExecutionEnvironment;
import org.kuali.rice.krms.framework.engine.Action;

public class CanCirculateAction implements Action {

	@Override
	public void execute(ExecutionEnvironment environment) {
		environment.getEngineResults().setAttribute("canCirculate", true);
	}

	@Override
	public void executeSimulation(ExecutionEnvironment environment) {
		execute(environment);
	}

}
