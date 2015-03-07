package trnapp.bookstore.service;

import java.util.List;

import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebResult;
import javax.jws.WebService;
import javax.jws.soap.SOAPBinding;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlElementWrapper;

import trnapp.bookstore.BookDTO;

@WebService(name = "bookWebService", targetNamespace = "http://service.bookstore.train/")
@SOAPBinding(style = SOAPBinding.Style.DOCUMENT, use = SOAPBinding.Use.LITERAL, parameterStyle = SOAPBinding.ParameterStyle.WRAPPED)
public interface BookService {

    @WebMethod(operationName = "getAllBooks")
    @XmlElementWrapper(name = "books", required = true)
    @XmlElement(name = "book", required = false)
    @WebResult(name = "books")
	public List<BookDTO> getAllBooks();

    @WebMethod(operationName = "getBookById")
    @WebResult(name = "book")
	public BookDTO getBookById( @WebParam(name="bookId") String bookId);
	
}
