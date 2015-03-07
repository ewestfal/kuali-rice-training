package trnapp.bookstore;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.kuali.rice.krad.service.KRADServiceLocatorWeb;
import org.kuali.rice.krad.web.controller.UifControllerBase;
import org.kuali.rice.krad.web.form.UifFormBase;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LandingController extends UifControllerBase {

	private static final String DEFAULT_VIEW_ID = "Landing";
	
	@Override
	protected UifFormBase createInitialForm(HttpServletRequest request) {
		return new UifFormBase();
	}
	
	@RequestMapping("/landing")
    public ModelAndView landing(@ModelAttribute("KualiForm") UifFormBase form, BindingResult result,
            HttpServletRequest request, HttpServletResponse response) {		
		form.setViewId(DEFAULT_VIEW_ID);
		form.setView(KRADServiceLocatorWeb.getViewService().getViewById(DEFAULT_VIEW_ID));
		form.setMethodToCall("start");
		return start(form,  result, request, response);
    }

}
