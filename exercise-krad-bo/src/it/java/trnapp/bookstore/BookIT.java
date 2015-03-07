package trnapp.bookstore;

import java.util.Calendar;

import org.apache.log4j.Logger;
import org.junit.Before;
import org.junit.Test;
import org.kuali.rice.krad.service.BusinessObjectService;
import org.kuali.rice.krad.service.KRADServiceLocator;

import trnapp.BaseITCase;

/**
 * A JUnit test class for testing the Book Business Object using the
 * BusinessObjectService.
 */
public class BookIT extends BaseITCase {

	private static final Logger LOG = Logger.getLogger(BookIT.class);
	
	private BusinessObjectService boService;
	
	@Before
	public void setUp() throws Exception {
		boService = KRADServiceLocator.getBusinessObjectService();
	}
	
	@Test
	public void testSave() {
		
		/*
		
		// construct the book and save it
		
		String author = "Frank Herbert";
		String title = "Dune";
		String category = "Science Fiction";
		String isbn = "978-0441013593";
		int year = 1965;
		Calendar calendar = Calendar.getInstance();
		calendar.set(Calendar.YEAR, year);
		
		Book book1 = new Book();
		book1.setAuthor(author);
		book1.setTitle(title);
		book1.setCategory(category);
		book1.setIsbn(isbn);
		book1.setPublicationDate(new java.sql.Date(calendar.getTime().getTime()));
		
		// these should all still be null
		
		assertNull("Book id should be null.", book1.getId());
		assertNull("Book objectId should be null.", book1.getObjectId());
		assertNull("Book versionNumber should be null.", book1.getVersionNumber());
		
		boService.save(book1);
		
		// at this point, the book should be saved
		// the business object should also have it's id, object id and version number set
		
		assertNotNull("Book should have an id now.", book1.getId());
		assertNotNull("Book should have an object id now.", book1.getObjectId());
		assertNotNull("Book should have a versionNumber now.", book1.getVersionNumber());
		
		LOG.info("book1.getId(): " + book1.getId());
		LOG.info("book1.getObjectId(): " + book1.getObjectId());
		LOG.info("book1.getVersionNumber(): " + book1.getVersionNumber());
		
		// now let's query for the book by primary key
		Book book2 = boService.findBySinglePrimaryKey(Book.class, book1.getId());
		assertNotNull("Book with id should exist", book2);
		assertEquals(author, book2.getAuthor());
		assertEquals(title, book2.getTitle());
		assertEquals(category, book2.getCategory());
		assertEquals(isbn, book2.getIsbn());
		Calendar book2Calendar = Calendar.getInstance();
		book2Calendar.setTime(book2.getPublicationDate());
		assertEquals(year, book2Calendar.get(Calendar.YEAR));
		
		*/
		
	}
	
	@Test
	public void testFindMatching() throws Exception {
		// 1. create multiple Books of your own choosing
		// 2. be sure to create some that have overlapping attributes (such as author or category)
		// 3. write some queries using BusinessObjectService.findMatching(Class, Map<String, Object>) to query for the books that you just created
		
		// write your test code here
		
	}
	
	@Test
	public void testDelete() throws Exception {
		// create a book and then test deleting the book using BusinessObjectService.delete(PersistableBusinessObject)
		
		// write your test code here
	}

	
}
