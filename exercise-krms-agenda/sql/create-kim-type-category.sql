INSERT INTO krim_typ_id_s VALUES(NULL);

INSERT INTO krim_typ_t (
	kim_typ_id, nmspc_cd, nm, srvc_nm, actv_ind, obj_id
) VALUES (
LAST_INSERT_ID(),
'TRNAPP',
'Book Category',
'bookCategoryRoleTypeService',
'Y',
uuid());

INSERT INTO krim_attr_defn_id_s VALUES(NULL);

INSERT INTO krim_attr_defn_t (
	kim_attr_defn_id, nmspc_cd, nm, lbl, cmpnt_nm, actv_ind, obj_id
) VALUES (
LAST_INSERT_ID(),
'TRNAPP',
'category',
'Category',
'trnapp.bookstore.Book',
'Y',
uuid());

INSERT INTO krim_typ_attr_id_s VALUES(NULL);

INSERT INTO krim_typ_attr_t (
	kim_typ_attr_id, kim_typ_id, kim_attr_defn_id, sort_cd, actv_ind, obj_id
) VALUES (
LAST_INSERT_ID(),
(select kim_typ_id from krim_typ_t where nmspc_cd='TRNAPP' and nm='Book Category'),
(select kim_attr_defn_id from krim_attr_defn_t where nmspc_cd='TRNAPP' and nm='category'),
'a',
'Y',
uuid());