CREATE XML SCHEMA COLLECTION [dbo].[ProductAttributeSchema]
    AS N'<xsd:schema xmlns:xsd="http://www.w3.org/2001/XMLSchema">
  <xsd:element name="ProductAttributes" type="ProductAttributesType" />
  <xsd:complexType name="ProductAttributesType">
    <xsd:complexContent>
      <xsd:restriction base="xsd:anyType">
        <xsd:sequence>
          <xsd:element name="weight" type="xsd:string" />
          <xsd:element name="color" type="xsd:string" />
          <xsd:element name="material" type="xsd:string" />
          <xsd:element name="size" type="xsd:int" />
          <xsd:element name="warranty" type="xsd:string" />
        </xsd:sequence>
      </xsd:restriction>
    </xsd:complexContent>
  </xsd:complexType>
</xsd:schema>';

