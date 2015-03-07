INSERT INTO kren_cntnt_typ_s VALUES (null);

INSERT INTO kren_cntnt_typ_t (CNTNT_TYP_ID, NM, DESC_TXT, NMSPC_CD, XSD, XSL, OBJ_ID)
VALUES
(LAST_INSERT_ID(), 'NewBook', 'New Book content type', 'notification/ContentTypeNewBook',
'<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://www.w3.org/2001/XMLSchema" targetNamespace="ns:notification/ContentTypeNewBook" attributeFormDefault="unqualified" elementFormDefault="qualified">
  <element name="content">
    <complexType>
      <sequence>
        <element name="title" type="string"/>
		<element name="author" type="string"/>
		<element name="message" type="string"/>
      </sequence>
    </complexType>
  </element>
</schema>',
'<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
   version="1.0"
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
   xmlns:n="ns:notification/ContentTypeNewBook"
   xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
   xsi:schemaLocation="ns:notification/ContentTypeNewBook resource:notification/ContentTypeNewBook">
   <xsl:output method="html" omit-xml-declaration="yes" />
   <xsl:template match="n:content">
     <div>A new book has arrived!</div>
     <div><strong>Title:</strong> <xsl:value-of select="n:title"/></div>
     <div><strong>Author:</strong> <xsl:value-of select="n:author"/></div>
     <div><xsl:value-of select="n:message"/></div>
   </xsl:template>
</xsl:stylesheet>', uuid());