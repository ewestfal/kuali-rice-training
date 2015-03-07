package trnapp.krms;

import java.util.Collections;
import java.util.List;

import org.kuali.rice.krms.api.engine.ExecutionEnvironment;
import org.kuali.rice.krms.api.repository.proposition.PropositionDefinition;
import org.kuali.rice.krms.framework.engine.Proposition;
import org.kuali.rice.krms.framework.engine.PropositionResult;
import org.kuali.rice.krms.framework.type.PropositionTypeService;

public class LoanCompliancePropositionTypeService implements PropositionTypeService {

	@Override
	public Proposition loadProposition(PropositionDefinition propositionDefinition) {
		return new LoanComplianceProposition();
	}
	
	public static class LoanComplianceProposition implements Proposition {
		@Override
		public PropositionResult evaluate(ExecutionEnvironment environment) {
			// for the purposes of demonstration, always return "true" here, which
			// indicates evaluation of the proposition was successful.  A real
			// implementation might call out to a service to determine if the
			// requested loan is in compliance
			System.out.println("Executing LoanComplianceProposition!");
			return new PropositionResult(true);
		}
		@Override
	    public List<Proposition> getChildren() {
	        return Collections.emptyList();
	    }	    
	    @Override
	    public boolean isCompound() {
	        return false;
	    }
	}

}
