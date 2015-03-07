package trnapp.bookstore;

import org.kuali.rice.core.api.util.RiceKeyConstants;
import org.kuali.rice.krad.document.Document;
import org.kuali.rice.krad.rules.TransactionalDocumentRuleBase;
import org.kuali.rice.krad.util.KRADConstants;

public class BookOrderDocumentRule extends TransactionalDocumentRuleBase {

	private static final String BOOK_ORDER_ENTRIES_SECTION_ID = "BookOrder-BookOrderEntries";
	private static final String NO_BOOK_ORDERS_ERROR_KEY = RiceKeyConstants.ERROR_CUSTOM;
	private static final String ERROR_MESSAGE = "You must add at least one entry to your book order.";
	
	@Override
	protected boolean processCustomRouteDocumentBusinessRules(Document document) {
		
		// you will need to cast the Document to a BookOrderDocument here and check the number of book order entries
		// here is the line of code which can be used to put the error message in the map
		//
		// GlobalVariables.getMessageMap().putError(BOOK_ORDER_ENTRIES_SECTION_ID, NO_BOOK_ORDERS_ERROR_KEY, ERROR_MESSAGE);
		//
		// Don't forget to return false if the validation fails!
		
		return super.processCustomRouteDocumentBusinessRules(document);
	}

	

	
	
}
