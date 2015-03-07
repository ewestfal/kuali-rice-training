-- define the 'Loan Period' KRMS type

insert into krms_typ_s values(NULL);

insert into krms_typ_t (TYP_ID, NMSPC_CD, NM, SRVC_NM)
values(LAST_INSERT_ID(), 'OLE', 'Loan Period', '{http://ole.kuali.org}loanPeriodActionTypeService');

-- define the "numberOfDays" attribute

insert into krms_attr_defn_s values(NULL);

insert into krms_attr_defn_t (ATTR_DEFN_ID, NMSPC_CD, NM, LBL, DESC_TXT)
values(LAST_INSERT_ID(), 'OLE', 'numberOfDays', 'Number of Days', 'Identifies a time period as a number of days');

-- add the numberOfDays attribute to the Loan Period type

insert into krms_typ_attr_s values(NULL);

insert into krms_typ_attr_t (TYP_ATTR_ID, SEQ_NO, TYP_ID, ATTR_DEFN_ID)
values (LAST_INSERT_ID(), 1, 
	    (select typ_id from krms_typ_t where nm = 'Loan Period'),
	    (select attr_defn_id from krms_attr_defn_t where nm = 'numberOfDays'));
	    
-- set up the type so that it valid on our context

insert into krms_cntxt_vld_actn_typ_s values(NULL);

insert into krms_cntxt_vld_actn_typ_t (cntxt_vld_actn_id, cntxt_id, actn_typ_id)
values (
    LAST_INSERT_ID(),
    (select cntxt_id from krms_cntxt_t where nmspc_cd='OLE' and nm='Kuali OLE'),
    (select typ_id from krms_typ_t where nmspc_cd='OLE' and nm='Loan Period')
);
