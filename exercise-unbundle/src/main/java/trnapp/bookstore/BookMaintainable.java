package trnapp.bookstore;

import java.util.Map;

import org.kuali.rice.krad.maintenance.MaintainableImpl;
import org.kuali.rice.krad.maintenance.MaintenanceDocument;

public class BookMaintainable extends MaintainableImpl {

	private static final long serialVersionUID = -6990981819460845196L;

	@Override
	public void processAfterCopy(MaintenanceDocument document,
			Map<String, String[]> requestParameters) {		
		Book book = ((Book)document.getNewMaintainableObject().getDataObject());
	    book.setIsbn(null);
	    super.processAfterCopy(document, requestParameters);
	}

}
