insert into krms_actn_s values(NULL);
insert into krms_actn_t (actn_id, nmspc_cd, nm, typ_id, rule_id, seq_no)
values (
	LAST_INSERT_ID(),
	'OLE',
	'CanCirculate PeopleFlow',
	(select typ_id from krms_typ_t where nm = 'Route to PeopleFlow'),
	(select rule_id from krms_rule_t where nm = 'Check Instances on Loan'),
	2
);

insert into krms_actn_attr_s values(NULL);
insert into krms_actn_attr_t (actn_attr_data_id, actn_id, attr_defn_id, attr_val)
values (
	LAST_INSERT_ID(),
	(select actn_id from krms_actn_t where nm = 'CanCirculate PeopleFlow'),
	(select attr_defn_id from krms_attr_defn_t where nm = 'peopleFlowId'),
	(select ppl_flw_id from krew_ppl_flw_t where nm='CanCirculate')
);

