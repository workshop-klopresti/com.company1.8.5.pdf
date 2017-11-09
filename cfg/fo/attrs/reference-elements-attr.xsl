<?xml version="1.0" encoding="UTF-8"?>
<!--
This file is part of the DITA Open Toolkit project.
See the accompanying license.txt file for applicable licenses.
-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  xmlns:rx="http://www.renderx.com/XSL/Extensions"
  version="2.0">

  <xsl:attribute-set name="properties" use-attribute-sets="base-font">
    <xsl:attribute name="width">100%</xsl:attribute>
    <xsl:attribute name="space-before">8pt</xsl:attribute>
    <xsl:attribute name="space-after">10pt</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="properties__body">
  </xsl:attribute-set>

  <xsl:attribute-set name="property">
  </xsl:attribute-set>

  <xsl:attribute-set name="property.entry">
  </xsl:attribute-set>

  <xsl:attribute-set name="property.entry__keycol-content" use-attribute-sets="common.table.body.entry common.table.head.entry">
      <xsl:attribute name="background-color">antiquewhite</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="property.entry__content" use-attribute-sets="common.table.body.entry">
  </xsl:attribute-set>

  <xsl:attribute-set name="prophead">
  </xsl:attribute-set>

  <xsl:attribute-set name="prophead__row">
  </xsl:attribute-set>

  <xsl:attribute-set name="prophead.entry">
  </xsl:attribute-set>

  <xsl:attribute-set name="prophead.entry__keycol-content" use-attribute-sets="common.table.body.entry common.table.head.entry">
      <xsl:attribute name="background-color">antiquewhite</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="prophead.entry__content" use-attribute-sets="common.table.body.entry common.table.head.entry">
  </xsl:attribute-set>

  <xsl:attribute-set name="reference">
  </xsl:attribute-set>

  <xsl:attribute-set name="refbody" use-attribute-sets="body">
  </xsl:attribute-set>

  <xsl:attribute-set name="refsyn">
  </xsl:attribute-set>
    
    <!--  KLL 2016-09-07 Transform Change Request: Add "Example:" prefix and other formatting -->
    <xsl:attribute-set name="reference.example" use-attribute-sets="example">
       <!-- <xsl:attribute name="color">#000000</xsl:attribute>
        <xsl:attribute name="font-family">sans-serif</xsl:attribute>
        <xsl:attribute name="font-size">12pt</xsl:attribute>
        <xsl:attribute name="font-weight">normal</xsl:attribute>
        <xsl:attribute name="border-top-style">none</xsl:attribute>
        <xsl:attribute name="border-bottom-style">none</xsl:attribute>
        <xsl:attribute name="border-left-style">none</xsl:attribute>
        <xsl:attribute name="border-right-style">none</xsl:attribute>
        <xsl:attribute name="space-above">3pt</xsl:attribute>
        <xsl:attribute name="space-below">4pt</xsl:attribute>
        <xsl:attribute name="space-before">0.6em</xsl:attribute>
        <xsl:attribute name="start-indent"> 0pt</xsl:attribute>
        <xsl:attribute name="end-indent">0pt</xsl:attribute>
        <xsl:attribute name="padding">0pt</xsl:attribute>-->
    </xsl:attribute-set>
    
    <!--  KLL 2016-09-07 Transform Change Request: Add "Example:" prefix and other formatting -->
    <xsl:attribute-set name="reference.example__content" use-attribute-sets="example__content">
        <!--<xsl:attribute name="font-size"><xsl:value-of select="$default-font-size"/></xsl:attribute>
        <xsl:attribute name="line-height"><xsl:value-of select="$default-line-height"/></xsl:attribute>
        <xsl:attribute name="color">#8a8a8a</xsl:attribute>
        <xsl:attribute name="font-family">sans-serif</xsl:attribute>
        <xsl:attribute name="font-weight">normal</xsl:attribute>-->
    </xsl:attribute-set>

</xsl:stylesheet>
