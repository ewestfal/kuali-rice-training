-- Affiliation

insert into krms_term_spec_s values(NULL);
insert into krms_term_spec_t (term_spec_id, nmspc_cd, nm, typ, ver_nbr, desc_txt)
  values (LAST_INSERT_ID(), 'OLE', 'Affiliation', 'java.lang.String', 1, 'A patron''s affiliation describes their relationship to the university.');
insert into krms_term_spec_ctgry_t (term_spec_id, ctgry_id)
  values (
    (select term_spec_id from krms_term_spec_t where nmspc_cd='OLE' and nm='Affiliation'),
    (select ctgry_id from krms_ctgry_t where nmspc_cd='OLE' and nm='Patron')
  );
insert into krms_cntxt_vld_term_spec_s values(NULL);
insert into krms_cntxt_vld_term_spec_t (cntxt_term_spec_prereq_id, cntxt_id, term_spec_id, prereq)
  values(
    LAST_INSERT_ID(),
    (select cntxt_id from krms_cntxt_t where nmspc_cd='OLE' and nm='Kuali OLE'),
    (select term_spec_id from krms_term_spec_t where nmspc_cd='OLE' and nm='Affiliation'),
    'N'
  );

-- In Good Standing

insert into krms_term_spec_s values(NULL);
insert into krms_term_spec_t (term_spec_id, nmspc_cd, nm, typ, ver_nbr, desc_txt)
  values (LAST_INSERT_ID(), 'OLE', 'In Good Standing', 'java.lang.Boolean', 1, 'Indicates whether or not the patron is in good standing with the library.');
insert into krms_term_spec_ctgry_t (term_spec_id, ctgry_id)
  values (
    (select term_spec_id from krms_term_spec_t where nmspc_cd='OLE' and nm='In Good Standing'),
    (select ctgry_id from krms_ctgry_t where nmspc_cd='OLE' and nm='Patron')
  );
insert into krms_cntxt_vld_term_spec_s values(NULL);
insert into krms_cntxt_vld_term_spec_t (cntxt_term_spec_prereq_id, cntxt_id, term_spec_id, prereq)
  values(
    LAST_INSERT_ID(),
    (select cntxt_id from krms_cntxt_t where nmspc_cd='OLE' and nm='Kuali OLE'),
    (select term_spec_id from krms_term_spec_t where nmspc_cd='OLE' and nm='In Good Standing'),
    'N'
  );
  
-- Number of Instances on Loan

insert into krms_term_spec_s values(NULL);
insert into krms_term_spec_t (term_spec_id, nmspc_cd, nm, typ, ver_nbr, desc_txt)
  values (LAST_INSERT_ID(), 'OLE', 'Number of Instances on Loan', 'java.lang.Integer', 1, 'Indicates the total number of instances a patron has out on loan');
insert into krms_term_spec_ctgry_t (term_spec_id, ctgry_id)
  values (
    (select term_spec_id from krms_term_spec_t where nmspc_cd='OLE' and nm='Number of Instances on Loan'),
    (select ctgry_id from krms_ctgry_t where nmspc_cd='OLE' and nm='Patron')
  );
insert into krms_cntxt_vld_term_spec_s values(NULL);
insert into krms_cntxt_vld_term_spec_t (cntxt_term_spec_prereq_id, cntxt_id, term_spec_id, prereq)
  values(
    LAST_INSERT_ID(),
    (select cntxt_id from krms_cntxt_t where nmspc_cd='OLE' and nm='Kuali OLE'),
    (select term_spec_id from krms_term_spec_t where nmspc_cd='OLE' and nm='Number of Instances on Loan'),
    'N'
  );

-- Patron

insert into krms_term_spec_s values(NULL);
insert into krms_term_spec_t (term_spec_id, nmspc_cd, nm, typ, ver_nbr, desc_txt)
  values (LAST_INSERT_ID(), 'OLE', 'Patron', 'org.kuali.ole.Patron', 1, 'A patron represents someone who utilizes library resources.');
insert into krms_term_spec_ctgry_t (term_spec_id, ctgry_id)
  values (
    (select term_spec_id from krms_term_spec_t where nmspc_cd='OLE' and nm='Patron'),
    (select ctgry_id from krms_ctgry_t where nmspc_cd='OLE' and nm='Patron')
  );
insert into krms_cntxt_vld_term_spec_s values(NULL);
insert into krms_cntxt_vld_term_spec_t (cntxt_term_spec_prereq_id, cntxt_id, term_spec_id, prereq)
  values(
    LAST_INSERT_ID(),
    (select cntxt_id from krms_cntxt_t where nmspc_cd='OLE' and nm='Kuali OLE'),
    (select term_spec_id from krms_term_spec_t where nmspc_cd='OLE' and nm='Patron'),
    'N'
  );
  
-- Loan Complies with License Terms

insert into krms_term_spec_s values(NULL);
insert into krms_term_spec_t (term_spec_id, nmspc_cd, nm, typ, ver_nbr, desc_txt)
  values (LAST_INSERT_ID(), 'OLE', 'Loan Complies with License Terms', 'java.lang.Boolean', 1, 'Indicates whether or not a loan of this instance complies with licesnse terms.');
insert into krms_term_spec_ctgry_t (term_spec_id, ctgry_id)
  values (
    (select term_spec_id from krms_term_spec_t where nmspc_cd='OLE' and nm='Loan Complies with License Terms'),
    (select ctgry_id from krms_ctgry_t where nmspc_cd='OLE' and nm='Instance')
  );
insert into krms_cntxt_vld_term_spec_s values(NULL);
insert into krms_cntxt_vld_term_spec_t (cntxt_term_spec_prereq_id, cntxt_id, term_spec_id, prereq)
  values(
    LAST_INSERT_ID(),
    (select cntxt_id from krms_cntxt_t where nmspc_cd='OLE' and nm='Kuali OLE'),
    (select term_spec_id from krms_term_spec_t where nmspc_cd='OLE' and nm='Loan Complies with License Terms'),
    'N'
  );
  
-- Can Circulate
  
insert into krms_term_spec_s values(NULL);
insert into krms_term_spec_t (term_spec_id, nmspc_cd, nm, typ, ver_nbr, desc_txt)
  values (LAST_INSERT_ID(), 'OLE', 'Can Circulate', 'java.lang.Boolean', 1, 'Indicates whether or not a requested instance can be circulated.');
insert into krms_term_spec_ctgry_t (term_spec_id, ctgry_id)
  values (
    (select term_spec_id from krms_term_spec_t where nmspc_cd='OLE' and nm='Can Circulate'),
    (select ctgry_id from krms_ctgry_t where nmspc_cd='OLE' and nm='Instance')
  );
insert into krms_cntxt_vld_term_spec_s values(NULL);
insert into krms_cntxt_vld_term_spec_t (cntxt_term_spec_prereq_id, cntxt_id, term_spec_id, prereq)
  values(
    LAST_INSERT_ID(),
    (select cntxt_id from krms_cntxt_t where nmspc_cd='OLE' and nm='Kuali OLE'),
    (select term_spec_id from krms_term_spec_t where nmspc_cd='OLE' and nm='Can Circulate'),
    'N'
  );
  
-- Instance
  
insert into krms_term_spec_s values(NULL);
insert into krms_term_spec_t (term_spec_id, nmspc_cd, nm, typ, ver_nbr, desc_txt)
  values (LAST_INSERT_ID(), 'OLE', 'Instance', 'java.lang.Boolean', 1, 'An instance represents a resource within the library collection.');
insert into krms_term_spec_ctgry_t (term_spec_id, ctgry_id)
  values (
    (select term_spec_id from krms_term_spec_t where nmspc_cd='OLE' and nm='Instance'),
    (select ctgry_id from krms_ctgry_t where nmspc_cd='OLE' and nm='Instance')
  );
insert into krms_cntxt_vld_term_spec_s values(NULL);
insert into krms_cntxt_vld_term_spec_t (cntxt_term_spec_prereq_id, cntxt_id, term_spec_id, prereq)
  values(
    LAST_INSERT_ID(),
    (select cntxt_id from krms_cntxt_t where nmspc_cd='OLE' and nm='Kuali OLE'),
    (select term_spec_id from krms_term_spec_t where nmspc_cd='OLE' and nm='Instance'),
    'N'
  );

-- Last Week of Semester
  
insert into krms_term_spec_s values(NULL);
insert into krms_term_spec_t (term_spec_id, nmspc_cd, nm, typ, ver_nbr, desc_txt)
  values (LAST_INSERT_ID(), 'OLE', 'Last Week of Semester', 'java.lang.Boolean', 1, 'Indicates whether or not the current date is during the last week of the semester.');
insert into krms_term_spec_ctgry_t (term_spec_id, ctgry_id)
  values (
    (select term_spec_id from krms_term_spec_t where nmspc_cd='OLE' and nm='Last Week of Semester'),
    (select ctgry_id from krms_ctgry_t where nmspc_cd='OLE' and nm='Time of Year')
  );
insert into krms_cntxt_vld_term_spec_s values(NULL);
insert into krms_cntxt_vld_term_spec_t (cntxt_term_spec_prereq_id, cntxt_id, term_spec_id, prereq)
  values(
    LAST_INSERT_ID(),
    (select cntxt_id from krms_cntxt_t where nmspc_cd='OLE' and nm='Kuali OLE'),
    (select term_spec_id from krms_term_spec_t where nmspc_cd='OLE' and nm='Last Week of Semester'),
    'N'
  );
