insert into krim_perm_id_s values(NULL);
insert into krim_perm_t (perm_id, perm_tmpl_id, nmspc_cd, nm, desc_txt, actv_ind, ver_nbr, obj_id)
values (
  LAST_INSERT_ID(),
  (select perm_tmpl_id from krim_perm_tmpl_t where nm = 'KRMS Agenda Permission' and nmspc_cd = 'KR-RULE'),
  'OLE',
  'Maintain KRMS Agenda',
  'Allows creation and modification of agendas for the OLE namespace',
  'Y',
  1,
  uuid()
);

insert into krim_attr_data_id_s values (NULL);
insert into krim_perm_attr_data_t
(attr_data_id, perm_id, kim_typ_id, kim_attr_defn_id, attr_val, ver_nbr, obj_id)
values (LAST_INSERT_ID(),
        (select perm_id from krim_perm_t where nm = 'Maintain KRMS Agenda' and nmspc_cd = 'OLE'),
        (select kim_typ_id from krim_typ_t where nm = 'Namespace' and nmspc_cd = 'KR-NS'),
        (select kim_attr_defn_id from krim_attr_defn_t where nm = 'namespaceCode'),
        'OLE',1,uuid());
        
insert into krim_role_perm_id_s values (NULL);
insert into krim_role_perm_t
(role_perm_id, role_id, perm_id, actv_ind, ver_nbr, obj_id)
values (LAST_INSERT_ID(),
        (select role_id from krim_role_t where role_nm = 'Technical Administrator' and nmspc_cd = 'KR-SYS'),
        (select perm_id from krim_perm_t where nm = 'Maintain KRMS Agenda' and nmspc_cd = 'OLE'),
        'Y', 1, uuid());