CREATE TABLE book_t
(
      book_id BIGINT(19),
      title VARCHAR(256),
      author VARCHAR(64),
      category VARCHAR(32),
      isbn VARCHAR(17),
      publisher VARCHAR(64),
      pub_date DATE,
      obj_id VARCHAR(36) NOT NULL,
      ver_nbr DECIMAL(8) default 1 NOT NULL,
      CONSTRAINT book_id PRIMARY KEY (book_id)
) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin;


CREATE TABLE book_s
(
	id BIGINT(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM;