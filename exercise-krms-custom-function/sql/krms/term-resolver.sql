insert into krms_typ_s values(NULL);
insert into krms_typ_t (TYP_ID, NMSPC_CD, NM, SRVC_NM)
values(LAST_INSERT_ID(), 'OLE', 'PatronTermResolver', '{http://ole.kuali.org}patronTermResolverTypeService');

insert into krms_term_rslvr_s values(NULL);
insert into krms_term_rslvr_t (TERM_RSLVR_ID, NMSPC_CD, NM, TYP_ID, OUTPUT_TERM_SPEC_ID)
values (
	LAST_INSERT_ID(),
	'OLE',
	'Affiliation',
	(select typ_id from krms_typ_t where nm = 'PatronTermResolver'),
	(select term_spec_id from krms_term_spec_t where nm = 'Affiliation')
);

insert into krms_term_rslvr_s values(NULL);
insert into krms_term_rslvr_t (TERM_RSLVR_ID, NMSPC_CD, NM, TYP_ID, OUTPUT_TERM_SPEC_ID)
values (
	LAST_INSERT_ID(),
	'OLE',
	'In Good Standing',
	(select typ_id from krms_typ_t where nm = 'PatronTermResolver'),
	(select term_spec_id from krms_term_spec_t where nm = 'In Good Standing')
);

insert into krms_term_rslvr_s values(NULL);
insert into krms_term_rslvr_t (TERM_RSLVR_ID, NMSPC_CD, NM, TYP_ID, OUTPUT_TERM_SPEC_ID)
values (
	LAST_INSERT_ID(),
	'OLE',
	'Number of Instances on Loan',
	(select typ_id from krms_typ_t where nm = 'PatronTermResolver'),
	(select term_spec_id from krms_term_spec_t where nm = 'Number of Instances on Loan')
);
