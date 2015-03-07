insert into krms_typ_s values(NULL);
insert into krms_typ_t (TYP_ID, NMSPC_CD, NM, SRVC_NM)
values(LAST_INSERT_ID(), 'OLE', 'FunctionLoader', '{http://ole.kuali.org}functionLoader');

insert into krms_func_s values(NULL);
insert into krms_func_t (func_id, nmspc_cd, nm, rtrn_typ, typ_id)
values (
    LAST_INSERT_ID(),
    'OLE',
    'lastWeekOfSemester',
    'java.lang.Boolean',
    (select typ_id from krms_typ_t where nmspc_cd = 'OLE' and nm = 'FunctionLoader')
);

