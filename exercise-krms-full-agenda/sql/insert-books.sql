INSERT INTO book_s VALUES(NULL);

INSERT INTO book_t (
	book_id, title, author_id, category, isbn, publisher, pub_date, obj_id
) VALUES (
LAST_INSERT_ID(),
'The Hitchhikers Guide to the Galaxy',
(select author_id from author_t where first_name='Douglas'),
'Science Fiction',
'0-330-25864-8',
'Pan Books',
'1979-10-12',
uuid());

INSERT INTO book_s VALUES(NULL);

INSERT INTO book_t (
	book_id, title, author_id, category, isbn, publisher, pub_date, obj_id
) VALUES (
LAST_INSERT_ID(),
'The Restaurant at the End of the Universe',
(select author_id from author_t where first_name='Douglas'),
'Science Fiction',
'0-345-39181-0',
'Pan Macmillan',
'1980-01-01',
uuid());

INSERT INTO book_s VALUES(NULL);

INSERT INTO book_t (
	book_id, title, author_id, category, isbn, publisher, pub_date, obj_id
) VALUES (
LAST_INSERT_ID(),
'Enders Game',
(select author_id from author_t where first_name='Orson'),
'Science Fiction',
'0-312-93208-1',
'Tor Books',
'1985-00-00',
uuid());

INSERT INTO book_s VALUES(NULL);

INSERT INTO book_t (
	book_id, title, author_id, category, isbn, publisher, pub_date, obj_id
) VALUES (
LAST_INSERT_ID(),
'Speaker for the Dead',
(select author_id from author_t where first_name='Orson'),
'Science Fiction',
'0-312-93738-5',
'Tor Books',
'1986-00-00',
uuid());

INSERT INTO book_s VALUES(NULL);

INSERT INTO book_t (
	book_id, title, author_id, category, isbn, publisher, pub_date, obj_id
) VALUES (
LAST_INSERT_ID(),
'Xenocide',
(select author_id from author_t where first_name='Orson'),
'Science Fiction',
'0-312-85056-5',
'Tor Books',
'1991-00-00',
uuid());

INSERT INTO book_s VALUES(NULL);

INSERT INTO book_t (
	book_id, title, author_id, category, isbn, publisher, pub_date, obj_id
) VALUES (
LAST_INSERT_ID(),
'Yosemite and the High Sierra ',
(select author_id from author_t where first_name='Ansel'),
'Photography',
'0-821-22134-5',
'Ansel Adams',
'1994-11-03',
uuid());


