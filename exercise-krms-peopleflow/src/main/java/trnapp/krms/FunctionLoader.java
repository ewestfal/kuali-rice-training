package trnapp.krms;

import org.kuali.rice.krms.api.repository.function.FunctionDefinition;
import org.kuali.rice.krms.framework.engine.Function;
import org.kuali.rice.krms.framework.type.FunctionTypeService;

public class FunctionLoader implements FunctionTypeService {

	@Override
	public Function loadFunction(FunctionDefinition functionDefinition) {
		if (functionDefinition.getName().equals("lastWeekOfSemester")) {
			return new LastWeekOfSemesterFunction();
		}
		throw new IllegalArgumentException("Failed to load function for the given definition: " +
				functionDefinition);
	}
	
	public static class LastWeekOfSemesterFunction implements Function {
		@Override
		public Object invoke(Object... arguments) {
			// pretend like it's always the last week of the semester, but in real life would
			// execute custom logic here to determine if it's actually the last week of the
			// semester, likely calling out to a service would make the most sense
			return Boolean.TRUE;
		}
	}

}
