package trnapp.bookstore;

import java.io.Serializable;

public class AuthorDTO implements Serializable {

	private static final long serialVersionUID = -2331335076659733454L;
	
	private Long id;
	private String firstName;
	private String middleName;
	private String lastName;
	
	public AuthorDTO() {}

	public AuthorDTO(Author author) {
		this.id = author.getId();
		this.firstName = author.getFirstName();
		this.middleName = author.getMiddleName();
		this.lastName = author.getLastName();
	}
	
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
