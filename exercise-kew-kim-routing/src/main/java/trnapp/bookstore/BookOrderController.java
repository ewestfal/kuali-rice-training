package trnapp.bookstore;

import javax.servlet.http.HttpServletRequest;

import org.kuali.rice.krad.web.controller.TransactionalDocumentControllerBase;
import org.kuali.rice.krad.web.form.DocumentFormBase;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/bookOrder")
public class BookOrderController extends TransactionalDocumentControllerBase {

	@Override
	protected DocumentFormBase createInitialForm(HttpServletRequest request) {
		return new BookOrderForm();
	}

}
