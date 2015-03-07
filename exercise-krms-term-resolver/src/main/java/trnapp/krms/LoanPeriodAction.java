package trnapp.krms;

import org.kuali.rice.krms.api.engine.ExecutionEnvironment;
import org.kuali.rice.krms.framework.engine.Action;

public class LoanPeriodAction implements Action {

	private final int numberOfDays;
	
	public LoanPeriodAction(int numberOfDays) {
		if (numberOfDays < 0) {
			throw new IllegalArgumentException("Must be a non-negative int value");
		}
		this.numberOfDays = numberOfDays;
	}
	
	@Override
	public void execute(ExecutionEnvironment environment) {
		environment.getEngineResults().setAttribute("loanPeriod", numberOfDays);

	}

	@Override
	public void executeSimulation(ExecutionEnvironment environment) {
		execute(environment);
	}

}
