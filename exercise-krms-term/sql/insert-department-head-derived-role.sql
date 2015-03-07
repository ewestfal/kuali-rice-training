INSERT INTO krim_role_id_s VALUES(NULL);

INSERT INTO krim_role_t (role_id, nmspc_cd, role_nm, kim_typ_id, obj_id)
VALUES (
	LAST_INSERT_ID(),
	'TRNAPP',
	'Department Head (Derived)',
	(select kim_typ_id from krim_typ_t where nmspc_cd='TRNAPP' and nm='Derived Role: Department Head'),
	uuid());
