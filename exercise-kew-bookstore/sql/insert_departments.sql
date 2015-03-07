INSERT INTO dept_t (dept_cd, dept_nm, parnt_dept_cd, obj_id)
VALUES ('UNIV', 'University', NULL, uuid());

INSERT INTO dept_t (dept_cd, dept_nm, parnt_dept_cd, obj_id)
VALUES ('ECON', 'Economics', 'UNIV', uuid());

INSERT INTO dept_t (dept_cd, dept_nm, parnt_dept_cd, obj_id)
VALUES ('ENGL', 'English', 'UNIV', uuid());

INSERT INTO dept_t (dept_cd, dept_nm, parnt_dept_cd, obj_id)
VALUES ('FINA', 'Fine Arts', 'UNIV', uuid());

INSERT INTO dept_t (dept_cd, dept_nm, parnt_dept_cd, obj_id)
VALUES ('FINH', 'Fine Arts History', 'FINA', uuid());

INSERT INTO dept_t (dept_cd, dept_nm, parnt_dept_cd, obj_id)
VALUES ('FINS', 'Fine Arts Studio', 'FINA', uuid());

INSERT INTO dept_t (dept_cd, dept_nm, parnt_dept_cd, obj_id)
VALUES ('BUSN', 'Business', 'UNIV', uuid());

INSERT INTO dept_t (dept_cd, dept_nm, parnt_dept_cd, obj_id)
VALUES ('BCOM', 'Business Communication', 'BUSN', uuid());

INSERT INTO dept_t (dept_cd, dept_nm, parnt_dept_cd, obj_id)
VALUES ('MGMT', 'Management', 'BUSN', uuid());

INSERT INTO dept_t (dept_cd, dept_nm, parnt_dept_cd, obj_id)
VALUES ('EMBA', 'Executive MBA', 'BUSN', uuid());
