
<%@page import="org.kuali.rice.core.api.resourceloader.GlobalResourceLoader"%>
<%@page import="trnapp.bookstore.service.EchoService"%>
<%@page import="javax.xml.namespace.QName"%>

<html><body>

<%

QName echoServiceName = new QName("http://service.bookstore.trnapp/", "echoService");
EchoService echoService = (EchoService)GlobalResourceLoader.getService(echoServiceName);

out.println("echoService: " + echoService);
out.print("<br><br>");
out.println("echoService.echo: " + echoService.echo("Yo!"));
out.print("<br>");
out.println("echoService.echoReverse: " + echoService.echoReverse("Strike that and reverse it!"));
out.print("<br>");

%>

</body></html>