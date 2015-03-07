INSERT INTO author_s VALUES(NULL);

INSERT INTO author_t (author_id, first_name, last_name, obj_id) VALUES
(LAST_INSERT_ID(), 'Douglas', 'Adams', uuid());

INSERT INTO author_s VALUES(NULL);

INSERT INTO author_t (author_id, first_name, last_name, obj_id) VALUES
(LAST_INSERT_ID(), 'Ansel', 'Adams', uuid());

INSERT INTO author_s VALUES(NULL);

INSERT INTO author_t (author_id, first_name, middle_name, last_name, obj_id) VALUES
(LAST_INSERT_ID(), 'Orson', 'Scott', 'Card', uuid());