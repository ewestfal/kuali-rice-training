package trnapp.bookstore.notify;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.kuali.rice.core.api.resourceloader.GlobalResourceLoader;
import org.kuali.rice.ken.api.KenApiConstants;
import org.kuali.rice.ken.api.service.SendNotificationService;

public class NotifyNewBookServlet extends HttpServlet {

	private static final long serialVersionUID = -5278005210079502599L;

	private SendNotificationService getNotificationService() {
	    return GlobalResourceLoader.getService(
	            KenApiConstants.ServiceNames.SEND_NOTIFICATION_SERVICE);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
	        throws ServletException, IOException {
	    String title = req.getParameter("title");
	    String author = req.getParameter("author");
	    String message = req.getParameter("message");
	    SendNotificationService service = getNotificationService();
	    service.invoke(generateNotificationXml(title, author, message));
	    resp.getOutputStream().print("notification sent");
	}
	
	private String generateNotificationXml(
			String title, String author, String message) {
		return
		  "<notification xmlns=\"ns:notification/NotificationRequest\"" +
		  "              xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\"" +
		  "              xsi:schemaLocation=\"ns:notification/NotificationRequest" +
		  "                                   resource:notification/NotificationRequest\">" +
		  "  <channel>Library Events Channel</channel>" +
		  "  <producer>University Library System</producer>" +
		  "  <senders></senders>" +
		  "  <recipients><user>fran</user><user>frank</user><user>erin</user></recipients>" +
		  "  <deliveryType>fyi</deliveryType>" +
		  "  <priority>Normal</priority>" +
		  "  <title>New Book</title>" +
		  "  <contentType>NewBook</contentType>" +
		  "  <content xmlns=\"ns:notification/ContentTypeNewBook\"" +
		  "           xsi:schemaLocation=\"ns:notification/ContentTypeNewBook" +
		  "                                resource:notification/ContentTypeNewBook\">" +
		  "    <title>" + title + "</title>" +
		  "    <author>" + author + "</author>" +
		  "    <message>" + message + "</message>" +
		  "  </content>" +
		  "</notification>";
	}
	
}
