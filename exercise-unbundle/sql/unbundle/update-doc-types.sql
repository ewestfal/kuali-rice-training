update krew_doc_typ_t set appl_id='trnapp' where doc_typ_nm in ('AuthorDocumentType', 'BookDocumentType', 'BookOrderDocumentType');

update krew_doc_typ_t set doc_hdlr_url='http://localhost:9000/trnapp/kr-krad/maintenance?methodToCall=docHandler' where doc_typ_nm in ('AuthorDocumentType', 'BookDocumentType');

update krew_doc_typ_t set doc_hdlr_url='http://localhost:9000/trnapp/kr-krad/bookOrder?methodToCall=docHandler' where doc_typ_nm = 'BookOrderDocumentType';