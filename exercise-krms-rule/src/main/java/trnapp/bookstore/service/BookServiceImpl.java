package trnapp.bookstore.service;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.kuali.rice.krad.service.KRADServiceLocator;

import trnapp.bookstore.Book;
import trnapp.bookstore.BookDTO;

public class BookServiceImpl implements BookService {

	@Override
	public List<BookDTO> getAllBooks() {
		Collection<Book> allBooks = KRADServiceLocator.getBusinessObjectService().findAll(Book.class);
		List<BookDTO> allBookDTOs = new ArrayList<BookDTO>();
		for (Book book : allBooks) {
			allBookDTOs.add(new BookDTO(book));
		}
		return allBookDTOs;
	}

	@Override
	public BookDTO getBookById(String bookId) {
		Book book = KRADServiceLocator.getBusinessObjectService().findBySinglePrimaryKey(Book.class, bookId);
		if (book == null) {
			return null;
		}
		return new BookDTO(book);
	}


}
