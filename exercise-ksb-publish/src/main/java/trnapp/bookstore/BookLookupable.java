package trnapp.bookstore;

import java.util.Map;

import org.kuali.rice.core.api.util.RiceKeyConstants;
import org.kuali.rice.krad.lookup.LookupableImpl;
import org.kuali.rice.krad.util.GlobalVariables;
import org.kuali.rice.krad.web.form.LookupForm;

public class BookLookupable extends LookupableImpl {

	private static final long serialVersionUID = -8353631384423618599L;

	@Override
	public boolean validateSearchParameters(LookupForm form,
			Map<String, String> parameters) {
		String category = parameters.get("category");
		if (category != null && category.contains("*")) {
			GlobalVariables.getMessageMap().putError("category",
					RiceKeyConstants.ERROR_CUSTOM,
					"Category does not support wildcards on search.");
			return false;
		}
		return super.validateSearchParameters(form, parameters);
	}

}
