CREATE TABLE chapter_t
(
      chapter_id BIGINT(19),
      title VARCHAR(64),
      number SMALLINT(4),
      book_id BIGINT(19),
      obj_id VARCHAR(36) NOT NULL,
      ver_nbr DECIMAL(8) default 1 NOT NULL,
      CONSTRAINT chapter_id PRIMARY KEY (chapter_id)
) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin;


CREATE TABLE chapter_s
(
	id BIGINT(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM;

ALTER TABLE chapter_t ADD CONSTRAINT FOREIGN KEY (book_id) REFERENCES book_t (book_id);
