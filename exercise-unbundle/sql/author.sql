CREATE TABLE author_t
(
      author_id BIGINT(19),
      first_name VARCHAR(64),
      middle_name VARCHAR(64),
      last_name VARCHAR(64),
      obj_id VARCHAR(36) NOT NULL,
      ver_nbr DECIMAL(8) default 1 NOT NULL,
      CONSTRAINT author_id PRIMARY KEY (author_id)
) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin;


CREATE TABLE author_s
(
	id BIGINT(19) not null auto_increment, primary key (id) 
) ENGINE MyISAM;

ALTER TABLE book_t drop column author;

ALTER TABLE book_t add column author_id BIGINT(19) NOT NULL;

ALTER TABLE book_t ADD CONSTRAINT FOREIGN KEY (author_id) REFERENCES author_t (author_id);
