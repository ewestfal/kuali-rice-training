insert into krms_typ_s values(NULL);
insert into krms_typ_t (TYP_ID, NMSPC_CD, NM, SRVC_NM)
values(
    LAST_INSERT_ID(),
    'OLE',
    'Loan Compliance',
    '{http://ole.kuali.org}loanCompliancePropositionTypeService'
);

