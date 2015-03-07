package trnapp.bookstore;

import java.util.List;

import org.kuali.rice.core.api.util.RiceKeyConstants;
import org.kuali.rice.krad.document.Document;
import org.kuali.rice.krad.rules.TransactionalDocumentRuleBase;
import org.kuali.rice.krad.util.GlobalVariables;

public class BookOrderDocumentRule extends TransactionalDocumentRuleBase {

	private static final String BOOK_ORDER_ENTRIES_SECTION_ID = "BookOrder-BookOrderEntries";
	private static final String NO_BOOK_ORDERS_ERROR_KEY = RiceKeyConstants.ERROR_CUSTOM;
	private static final String ERROR_MESSAGE = "You must add at least one entry to your book order.";
	
	@Override
	protected boolean processCustomRouteDocumentBusinessRules(Document document) {

		// cast the document to a BookOrderDocument
		BookOrderDocument bookOrderDocument = (BookOrderDocument)document;
		
		// get the list of book order entries off of the book order document
		List<BookOrderEntry> bookOrderEntries = bookOrderDocument.getBookOrderEntries();
		
		// make sure that the list is not empty
		if (bookOrderEntries == null || bookOrderEntries.isEmpty()) {
			GlobalVariables.getMessageMap().putError(BOOK_ORDER_ENTRIES_SECTION_ID, NO_BOOK_ORDERS_ERROR_KEY, ERROR_MESSAGE);
			return false;
		}
		
		return super.processCustomRouteDocumentBusinessRules(document);
	}

	

	
	
}
