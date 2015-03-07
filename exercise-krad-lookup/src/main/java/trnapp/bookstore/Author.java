package trnapp.bookstore;

import org.kuali.rice.krad.bo.PersistableBusinessObjectBase;

public class Author extends PersistableBusinessObjectBase {

	private static final long serialVersionUID = 376569456362921672L;
	
	private Long id;
	private String firstName;
	private String middleName;
	private String lastName;

	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getMiddleName() {
		return middleName;
	}
	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	
}
