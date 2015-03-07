alter table dept_t add column dept_hd_prncpl_id varchar(40) null;

update dept_t set dept_hd_prncpl_id = 'erin' where dept_cd = 'ECON';
update dept_t set dept_hd_prncpl_id = 'fran' where dept_cd = 'ENGL';
update dept_t set dept_hd_prncpl_id = 'doug' where dept_cd = 'FINH';
update dept_t set dept_hd_prncpl_id = 'earl' where dept_cd = 'FINS';
update dept_t set dept_hd_prncpl_id = 'edna' where dept_cd = 'BCOM';
update dept_t set dept_hd_prncpl_id = 'eric' where dept_cd = 'MGMT';
update dept_t set dept_hd_prncpl_id = 'frank' where dept_cd = 'EMBA';
