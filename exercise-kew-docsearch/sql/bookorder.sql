CREATE TABLE book_order_doc_t
(
      doc_hdr_id BIGINT(19),
      obj_id VARCHAR(36) NOT NULL,
      ver_nbr DECIMAL(8) default 1 NOT NULL,
      CONSTRAINT book_order_doc_pk PRIMARY KEY (doc_hdr_id)
) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin;