CREATE TABLE book_order_entry_t
(
	  book_order_entry_id BIGINT(19) NOT NULL,
      doc_hdr_id VARCHAR(14) NOT NULL,
      quantity SMALLINT NOT NULL,
      book_id BIGINT(19) NOT NULL,
      obj_id VARCHAR(36) NOT NULL,
      ver_nbr DECIMAL(8) default 1 NOT NULL,
      CONSTRAINT book_order_entry_pk PRIMARY KEY (book_order_entry_id)
) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin;

ALTER TABLE book_order_entry_t ADD CONSTRAINT FOREIGN KEY (doc_hdr_id) REFERENCES krns_doc_hdr_t (doc_hdr_id);
ALTER TABLE book_order_entry_t ADD CONSTRAINT FOREIGN KEY (book_id) REFERENCES book_t (book_id);

CREATE TABLE book_order_entry_s
(
	id BIGINT(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM;
