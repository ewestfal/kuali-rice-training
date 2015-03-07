package trnapp.bookstore;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import org.junit.Before;
import org.junit.Test;
import org.kuali.rice.krad.service.BusinessObjectService;
import org.kuali.rice.krad.service.KRADServiceLocator;

import trnapp.BaseITCase;

/**
 * A JUnit test class for testing the Author Business Object using the
 * BusinessObjectService.
 * 
 * @author Eric Westfall
 */
public class AuthorIT extends BaseITCase {
	
	private BusinessObjectService boService;
	
	@Before
	public void setUp() throws Exception {
		boService = KRADServiceLocator.getBusinessObjectService();
	}
	
	@Test
	public void testSaveAndQuery() {
		
		String firstName1 = "George";
		String middleName1 = "R.R.";
		String lastName1 = "Martin";

		Author author1 = new Author();
		author1.setFirstName(firstName1);
		author1.setMiddleName(middleName1);
		author1.setLastName(lastName1);
		
		String firstName2 = "Stephen";
		String middleName2 = "";
		String lastName2 = "King";

		Author author2 = new Author();
		author2.setFirstName(firstName2);
		author2.setMiddleName(middleName2);
		author2.setLastName(lastName2);

		boService.save(author1);
		boService.save(author2);
		
		assertNotNull("author1 should have an id.", author1.getId());
		assertNotNull("author2 should have an id.", author2.getId());
		
		Map<String, Object> queryMap = new HashMap<String, Object>();
		queryMap.put("lastName", lastName2);
		Collection<Author> authors = boService.findMatching(Author.class, queryMap);
		
		assertEquals(1, authors.size());
		Author resultAuthor = authors.iterator().next();
		assertEquals(author2.getId(), resultAuthor.getId());
		
		
	}
		
}
