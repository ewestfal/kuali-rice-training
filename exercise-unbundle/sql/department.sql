CREATE TABLE dept_t
(
      dept_cd VARCHAR(4) NOT NULL,
      dept_nm VARCHAR(64) NOT NULL,
      parnt_dept_cd VARCHAR(4),
      obj_id VARCHAR(36) NOT NULL,
      ver_nbr DECIMAL(8) default 1 NOT NULL,
      CONSTRAINT dept_cd PRIMARY KEY (dept_cd),
      CONSTRAINT FOREIGN KEY (parnt_dept_cd) REFERENCES dept_t(dept_cd)
) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin;

