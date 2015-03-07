-- define the KRMS type

insert into krms_typ_s values(NULL);

insert into krms_typ_t (TYP_ID, NMSPC_CD, NM, SRVC_NM)
values(LAST_INSERT_ID(), 'OLE', 'Can Circulate', '{http://ole.kuali.org}canCirculateActionTypeService');

-- set up the type so that it valid on our context

insert into krms_cntxt_vld_actn_typ_s values(NULL);

insert into krms_cntxt_vld_actn_typ_t (cntxt_vld_actn_id, cntxt_id, actn_typ_id)
values (
    LAST_INSERT_ID(),
    (select cntxt_id from krms_cntxt_t where nmspc_cd='OLE' and nm='Kuali OLE'),
    (select typ_id from krms_typ_t where nmspc_cd='OLE' and nm='Can Circulate')
);
