-- Affilation

insert into krms_term_s values(NULL);
insert into krms_term_t (term_id, term_spec_id, ver_nbr, desc_txt)
  values (
    LAST_INSERT_ID(), 
    (select term_spec_id from krms_term_spec_t where nmspc_cd='OLE' and nm='Affiliation'),
    1,
    'Affiliation'
  );

-- In Good Standing

insert into krms_term_s values(NULL);
insert into krms_term_t (term_id, term_spec_id, ver_nbr, desc_txt)
  values (
    LAST_INSERT_ID(), 
    (select term_spec_id from krms_term_spec_t where nmspc_cd='OLE' and nm='In Good Standing'),
    1,
    'In Good Standing'
  );

-- Number of Instances on Loan

insert into krms_term_s values(NULL);
insert into krms_term_t (term_id, term_spec_id, ver_nbr, desc_txt)
  values (
    LAST_INSERT_ID(), 
    (select term_spec_id from krms_term_spec_t where nmspc_cd='OLE' and nm='Number of Instances on Loan'),
    1,
    'Number of Instances on Loan'
  );

-- Patron

insert into krms_term_s values(NULL);
insert into krms_term_t (term_id, term_spec_id, ver_nbr, desc_txt)
  values (
    LAST_INSERT_ID(), 
    (select term_spec_id from krms_term_spec_t where nmspc_cd='OLE' and nm='Patron'),
    1,
    'Patron'
  );

-- Loan Complies with License Terms

insert into krms_term_s values(NULL);
insert into krms_term_t (term_id, term_spec_id, ver_nbr, desc_txt)
  values (
    LAST_INSERT_ID(), 
    (select term_spec_id from krms_term_spec_t where nmspc_cd='OLE' and nm='Loan Complies with License Terms'),
    1,
    'Loan Complies with License Terms'
  );

-- Can Circulate
  
insert into krms_term_s values(NULL);
insert into krms_term_t (term_id, term_spec_id, ver_nbr, desc_txt)
  values (
    LAST_INSERT_ID(), 
    (select term_spec_id from krms_term_spec_t where nmspc_cd='OLE' and nm='Can Circulate'),
    1,
    'Can Circulate'
  );

-- Instance
  
insert into krms_term_s values(NULL);
insert into krms_term_t (term_id, term_spec_id, ver_nbr, desc_txt)
  values (
    LAST_INSERT_ID(), 
    (select term_spec_id from krms_term_spec_t where nmspc_cd='OLE' and nm='Instance'),
    1,
    'Instance'
  );

-- Last Week of Semester
  
insert into krms_term_s values(NULL);
insert into krms_term_t (term_id, term_spec_id, ver_nbr, desc_txt)
  values (
    LAST_INSERT_ID(), 
    (select term_spec_id from krms_term_spec_t where nmspc_cd='OLE' and nm='Last Week of Semester'),
    1,
    'Last Week of Semester'
  );
