INSERT INTO krim_typ_id_s VALUES(NULL);

INSERT INTO krim_typ_t (kim_typ_id, nmspc_cd, nm, srvc_nm, obj_id)
VALUES (LAST_INSERT_ID(), 'TRNAPP', 'Department', 'departmentRoleTypeService', uuid());