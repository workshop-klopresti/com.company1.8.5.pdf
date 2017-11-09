<?xml version='1.0'?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:rx="http://www.renderx.com/XSL/Extensions"
  version="2.0">

  <xsl:attribute-set name="__lotf__heading" use-attribute-sets="__toc__header"> </xsl:attribute-set>

  <xsl:attribute-set name="__lotf__indent" use-attribute-sets="__toc__indent__booklist"> </xsl:attribute-set>

  <xsl:attribute-set name="__lotf__content"
    use-attribute-sets="base-font __toc__topic__content__booklist">
        <xsl:attribute name="last-line-end-indent">-22pt</xsl:attribute>
    <xsl:attribute name="font-size">10pt</xsl:attribute>
    <xsl:attribute name="end-indent">22pt</xsl:attribute>
    <xsl:attribute name="text-indent">0in</xsl:attribute>
    <xsl:attribute name="text-align">start</xsl:attribute>
    <xsl:attribute name="font-weight">normal</xsl:attribute>
    <xsl:attribute name="space-before">5pt</xsl:attribute>
    <xsl:attribute name="space-after">5pt</xsl:attribute>
    <xsl:attribute name="color">#000000</xsl:attribute>
    <xsl:attribute name="text-align-last">left</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="__lotf__leader">
    <xsl:attribute name="leader-pattern">dots</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="__lotf__title" use-attribute-sets="__lotf__content"> </xsl:attribute-set>

  <xsl:attribute-set name="__lotf__page-number">
    <xsl:attribute name="start-indent">-<xsl:value-of select="$toc.text-indent"
    /></xsl:attribute>
    <xsl:attribute name="keep-together.within-line">always</xsl:attribute>
    <xsl:attribute name="font-size">10pt</xsl:attribute>
    <xsl:attribute name="color">#000000</xsl:attribute>
    <xsl:attribute name="font-weight">regular</xsl:attribute>
  </xsl:attribute-set>

</xsl:stylesheet>
