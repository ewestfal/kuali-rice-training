INSERT INTO krim_typ_id_s VALUES(NULL);

INSERT INTO krim_typ_t (kim_typ_id, nmspc_cd, nm, srvc_nm, obj_id)
VALUES (LAST_INSERT_ID(), 'TRNAPP', 'Derived Role: Department Head', 'departmentHeadDerivedRoleTypeService', uuid());

INSERT INTO krim_typ_attr_id_s VALUES(NULL);

INSERT INTO krim_typ_attr_t (kim_typ_attr_id, kim_typ_id, kim_attr_defn_id, sort_cd, obj_id)
VALUES (
	LAST_INSERT_ID(),
	(select kim_typ_id from krim_typ_t where nmspc_cd='TRNAPP' and nm='Derived Role: Department Head'),
	(select kim_attr_defn_id from krim_attr_defn_t where nmspc_cd='TRNAPP' and nm='department'),
	'a',
	uuid());
