package org.kuali.ole;

import java.util.Collections;
import java.util.Map;
import java.util.Set;

import org.kuali.rice.krms.api.engine.TermResolutionException;
import org.kuali.rice.krms.api.engine.TermResolver;
import org.kuali.rice.krms.api.repository.term.TermResolverDefinition;
import org.kuali.rice.krms.framework.type.TermResolverTypeService;

public class PatronTermResolverTypeService implements TermResolverTypeService {

	private static final String AFFILIATION = "Affiliation";
	private static final String IN_GOOD_STANDING = "In Good Standing";
	private static final String NUMBER_OF_INSTANCES_ON_LOAN = "Number of Instances on Loan";
	
	@Override
	public TermResolver<?> loadTermResolver(TermResolverDefinition termResolverDefinition) {
		String resolverName = termResolverDefinition.getName();
		if (resolverName.equals(AFFILIATION)) {
			return new AffiliationTermResolver();
		} else if (resolverName.equals(IN_GOOD_STANDING)) {
			return new InGoodStandingTermResolver();
		} else if (resolverName.equals(NUMBER_OF_INSTANCES_ON_LOAN)) {
			return new NumberOfInstancesOnLoanTermResolver();
		}
		throw new IllegalArgumentException("Failed to load term resolver from the given definition: " +
				termResolverDefinition);
	}
	
	public static abstract class PatronTermResolver implements TermResolver<Object> {
				
		@Override
		public Set<String> getPrerequisites() {
			return Collections.singleton("Patron");
		}

		@Override
		public Set<String> getParameterNames() {
			return Collections.emptySet();
		}
		
		@Override
		public int getCost() {
			return 1;
		}

		@Override
		public Object resolve(Map<String, Object> resolvedPrereqs,
				Map<String, String> parameters) throws TermResolutionException {
			Patron patron = (Patron)resolvedPrereqs.get("Patron");
			if (patron == null) {
				throw new TermResolutionException("Failed to locate Patron prereq", this, parameters);
			}
			return resolveFromPatron(patron);
		}
		
		protected abstract Object resolveFromPatron(Patron patron);
		
	}
	
	public static class AffiliationTermResolver extends PatronTermResolver {
		@Override
		protected Object resolveFromPatron(Patron patron) {
			return patron.getAffiliation();
		}
		@Override
		public String getOutput() {
			return "Affiliation";
		}
	}

	public static class InGoodStandingTermResolver extends PatronTermResolver {
		@Override
		protected Object resolveFromPatron(Patron patron) {
			// KRMS has some bugs coercing boolean types properly, so convert this to String
			return Boolean.valueOf(patron.isInGoodStanding()).toString();
		}
		@Override
		public String getOutput() {
			return "In Good Standing";
		}
	}

	public static class NumberOfInstancesOnLoanTermResolver extends PatronTermResolver {
		@Override
		protected Object resolveFromPatron(Patron patron) {
			return patron.getNumberOfInstancesOnLoan();
		}
		@Override
		public String getOutput() {
			return "Number of Instances on Loan";
		}
	}
	
}
