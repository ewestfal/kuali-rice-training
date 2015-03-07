package trnapp.bookstore;

import java.util.Calendar;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

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
		
		// construct the book and save it
		
		String firstName = "Frank";
		String middleName = null; // we will leave middle name off here
		String lastName = "Herbert";
		Author author = new Author();
		author.setFirstName(firstName);
		author.setMiddleName(middleName);
		author.setLastName(lastName);
		
		String title = "Dune";
		String category = "Science Fiction";
		String isbn = "978-0441013593";
		int year = 1965;
		Calendar calendar = Calendar.getInstance();
		calendar.set(Calendar.YEAR, year);
		java.sql.Date publicationDate = new java.sql.Date(calendar.getTime().getTime());
		
		Book book1 = new Book();
		book1.setAuthor(author);
		book1.setTitle(title);
		book1.setCategory(category);
		book1.setIsbn(isbn);
		book1.setPublicationDate(publicationDate);
		
		// these should all still be null
		
		assertNull("Book id should be null.", book1.getId());
		assertNull("Book objectId should be null.", book1.getObjectId());
		assertNull("Book versionNumber should be null.", book1.getVersionNumber());
		assertNull("Author id should be null.", author.getId());
		
		boService.save(book1);
		
		// at this point, the book should be saved
		// the business object should also have it's id, object id and version number set
		
		assertNotNull("Book should have an id now.", book1.getId());
		assertNotNull("Book should have an object id now.", book1.getObjectId());
		assertNotNull("Book should have a versionNumber now.", book1.getVersionNumber());
		assertNotNull("Author should have an id now.", author.getId());
		assertEquals("The authorId on the book should be the same as the Author's id.", author.getId(), book1.getAuthorId());
		
		LOG.info("book1.getId(): " + book1.getId());
		LOG.info("book1.getObjectId(): " + book1.getObjectId());
		LOG.info("book1.getVersionNumber(): " + book1.getVersionNumber());
		
		// now let's query for the book by primary key
		Book book2 = boService.findBySinglePrimaryKey(Book.class, book1.getId());
		assertNotNull("Book with id should exist", book2);
		assertEquals(author.getId(), book2.getAuthor().getId());
		assertEquals(title, book2.getTitle());
		assertEquals(category, book2.getCategory());
		assertEquals(isbn, book2.getIsbn());
		Calendar book2Calendar = Calendar.getInstance();
		book2Calendar.setTime(book2.getPublicationDate());
		assertEquals(year, book2Calendar.get(Calendar.YEAR));
		
	}
	
	@Test
	public void testFindMatching() throws Exception {
		
		String firstName = "Frank";
		String middleName = null; // we will leave middle name off here
		String lastName = "Herbert";
		Author author = new Author();
		author.setFirstName(firstName);
		author.setMiddleName(middleName);
		author.setLastName(lastName);

		String category = "Science Fiction";
		
		String title1 = "Dune";
		String isbn1 = "978-0441013593";
		int year1 = 1965;
		Calendar calendar1 = Calendar.getInstance();
		calendar1.set(Calendar.YEAR, year1);
		java.sql.Date publicationDate1 = new java.sql.Date(calendar1.getTime().getTime());
		
		Book book1 = new Book();
		book1.setAuthor(author);
		book1.setTitle(title1);
		book1.setCategory(category);
		book1.setIsbn(isbn1);
		book1.setPublicationDate(publicationDate1);
		
		// book2 will have the same author and category

		String title2 = "Dune Messiah";
		String isbn2 = "0-441-17269-5";
		int year2 = 1970;
		Calendar calendar2 = Calendar.getInstance();
		calendar2.set(Calendar.YEAR, year2);
		java.sql.Date publicationDate2 = new java.sql.Date(calendar2.getTime().getTime());
		
		Book book2 = new Book();
		book2.setAuthor(author);
		book2.setTitle(title2);
		book2.setCategory(category);
		book2.setIsbn(isbn2);
		book2.setPublicationDate(publicationDate2);

		boService.save(book1);
		boService.save(book2);
		
		Map<String, Object> queryMap = new HashMap<String, Object>();
		queryMap.put("author.lastName", lastName);
		Collection<Book> results = boService.findMatching(Book.class, queryMap);
		
		// verify that there should be two entries
		assertEquals("There should be two books with the same author.", 2, results.size());
		
		Iterator<Book> iterator = results.iterator();
		Book resultBook1 = iterator.next();
		Book resultBook2 = iterator.next();
		assertFalse("Book ids should be different.", resultBook1.getId().equals(resultBook2.getId()));
		assertTrue(resultBook1.getTitle().equals(title1) || resultBook1.getTitle().equals(title2));
		assertTrue(resultBook2.getTitle().equals(title1) || resultBook2.getTitle().equals(title2));
		
		// query by title
		
		queryMap = new HashMap<String, Object>();
		queryMap.put("title", title1);
		results = boService.findMatching(Book.class, queryMap);
		assertEquals("Shoul only be one record returned.", 1, results.size());
	}
	
	@Test
	public void testDelete() throws Exception {
		
		// construct the book and save it
		
		String firstName = "Frank";
		String middleName = "";
		String lastName = "Herbert";
		Author author = new Author();
		author.setFirstName(firstName);
		author.setMiddleName(middleName);
		author.setLastName(lastName);

		String title = "Dune";
		String category = "Science Fiction";
		String isbn = "978-0441013593";
		int year = 1965;
		Calendar calendar = Calendar.getInstance();
		calendar.set(Calendar.YEAR, year);
		java.sql.Date publicationDate = new java.sql.Date(calendar.getTime().getTime());
		
		Book book1 = new Book();
		book1.setAuthor(author);
		book1.setTitle(title);
		book1.setCategory(category);
		book1.setIsbn(isbn);
		book1.setPublicationDate(publicationDate);
				
		boService.save(book1);
				
		// now let's query for the book by primary key
		
		Book book2 = boService.findBySinglePrimaryKey(Book.class, book1.getId());
		assertNotNull("Book with id should exist", book2);
		
		// delete the book
		boService.delete(book2);
		
		// find by primary key again
		Book book3 = boService.findBySinglePrimaryKey(Book.class, book2.getId());
		assertNull("Book has been deleted so it should no longer exist", book3);
		
		// now, let's verify that the delete did not cascade to the Author
		author = boService.findBySinglePrimaryKey(Author.class, author.getId());
		assertNotNull("Author should not have been deleted.", author);
		assertEquals(firstName, author.getFirstName());
		assertEquals(middleName, author.getMiddleName());
		assertEquals(lastName, author.getLastName());

	}
	
}
