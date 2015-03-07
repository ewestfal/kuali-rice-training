package trnapp.bookstore;

import java.io.Serializable;
import java.util.Date;

public class BookDTO implements Serializable {

	private static final long serialVersionUID = -3157143848655074506L;
	
	private Long id;
	private String title;
	private AuthorDTO author;
	private String category;
	private String isbn;
	private String publisher;
	private Date publicationDate;
	
	public BookDTO() {}
	
	public BookDTO(Book book) {
		this.id = book.getId();
		this.title = book.getTitle();
		this.author = new AuthorDTO(book.getAuthor());
		this.category = book.getCategory();
		this.isbn = book.getIsbn();
		this.publisher = book.getPublisher();
		this.publicationDate = null;
		if (book.getPublicationDate() != null) {
			 this.publicationDate = new Date(book.getPublicationDate().getTime());
		}
	}
	
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
	public AuthorDTO getAuthor() {
		return author;
	}
	public void setAuthor(AuthorDTO author) {
		this.author = author;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getIsbn() {
		return isbn;
	}
	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	public Date getPublicationDate() {
		return publicationDate;
	}
	public void setPublicationDate(Date publicationDate) {
		this.publicationDate = publicationDate;
	}
	
}
