package trnapp.bookstore;

import java.util.ArrayList;
import java.util.List;

import org.kuali.rice.krad.document.TransactionalDocumentBase;

public class BookOrderDocument extends TransactionalDocumentBase {

	private static final long serialVersionUID = -3725869215208302201L;
	
	private List<BookOrderEntry> bookOrderEntries = new ArrayList<BookOrderEntry>();

	public List<BookOrderEntry> getBookOrderEntries() {
		return bookOrderEntries;
	}

	public void setBookOrderEntries(List<BookOrderEntry> bookOrderEntries) {
		this.bookOrderEntries = bookOrderEntries;
	}
	
}
