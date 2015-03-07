CREATE TABLE bookstore.author_s LIKE trnrice.author_s;
INSERT INTO bookstore.author_s SELECT * FROM trnrice.author_s;

CREATE TABLE bookstore.author_t LIKE trnrice.author_t;
INSERT INTO bookstore.author_t SELECT * FROM trnrice.author_t;

CREATE TABLE bookstore.book_order_doc_t LIKE trnrice.book_order_doc_t;
INSERT INTO bookstore.book_order_doc_t SELECT * FROM trnrice.book_order_doc_t;

CREATE TABLE bookstore.book_order_entry_s LIKE trnrice.book_order_entry_s;
INSERT INTO bookstore.book_order_entry_s SELECT * FROM trnrice.book_order_entry_s;

CREATE TABLE bookstore.book_order_entry_t LIKE trnrice.book_order_entry_t;
INSERT INTO bookstore.book_order_entry_t SELECT * FROM trnrice.book_order_entry_t;

CREATE TABLE bookstore.book_s LIKE trnrice.book_s;
INSERT INTO bookstore.book_s SELECT * FROM trnrice.book_s;

CREATE TABLE bookstore.book_t LIKE trnrice.book_t;
INSERT INTO bookstore.book_t SELECT * FROM trnrice.book_t;

CREATE TABLE bookstore.chapter_s LIKE trnrice.chapter_s;
INSERT INTO bookstore.chapter_s SELECT * FROM trnrice.chapter_s;

CREATE TABLE bookstore.chapter_t LIKE trnrice.chapter_t;
INSERT INTO bookstore.chapter_t SELECT * FROM trnrice.chapter_t;

-- Uncommment this if you did the exercise which uses dept_t and this table exists in your database
-- CREATE TABLE bookstore.dept_t LIKE trnrice.dept_t;
-- INSERT INTO bookstore.dept_t SELECT * FROM trnrice.dept_t;

