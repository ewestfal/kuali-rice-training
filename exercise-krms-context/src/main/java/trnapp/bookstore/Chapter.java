package trnapp.bookstore;

import org.kuali.rice.krad.bo.PersistableBusinessObjectBase;

public class Chapter extends PersistableBusinessObjectBase {

	private static final long serialVersionUID = -5239770045043036743L;

	private Long id;
	private String title;
	private int number;
	private Long bookId;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public Long getBookId() {
		return bookId;
	}
	public void setBookId(Long bookId) {
		this.bookId = bookId;
	}
	
}
