<?xml version="1.0" encoding="UTF-8"?>
<!--
  This file is part of the DITA Open Toolkit project.
  See the accompanying license.txt file for applicable licenses.
-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format" version="2.0">

  <xsl:attribute-set name="simple-page-master">
    <xsl:attribute name="page-width">
      <xsl:value-of select="$page-width"/>
    </xsl:attribute>
    <xsl:attribute name="page-height">
      <xsl:value-of select="$page-height"/>
    </xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="landscape-page-master">
    <xsl:attribute name="page-width">
      <xsl:value-of select="$page-width-landscape"/>
    </xsl:attribute>
    <xsl:attribute name="page-height">
      <xsl:value-of select="$page-height-landscape"/>
    </xsl:attribute>
  </xsl:attribute-set>

  <!-- legacy attribute set -->
  <xsl:attribute-set name="region-body" use-attribute-sets="region-body.odd"/>

  <!--DITA for Print Exercise-->
  <xsl:attribute-set name="region-body.first">
    <xsl:attribute name="margin-top">
      <xsl:value-of select="$page-margin-top-first"/>
    </xsl:attribute>
    <xsl:attribute name="margin-bottom">
      <xsl:value-of select="$page-margin-bottom"/>
    </xsl:attribute>
    <xsl:attribute name="{if ($writing-mode = 'lr') then 'margin-left' else 'margin-right'}">
      <xsl:value-of select="$page-margin-inside"/>
    </xsl:attribute>
    <xsl:attribute name="{if ($writing-mode = 'lr') then 'margin-right' else 'margin-left'}">
      <xsl:value-of select="$page-margin-outside"/>
    </xsl:attribute>
    <!--#ffffc0 color is a light yellow    -->
    <!-- <xsl:attribute name="background-color"> #ffffc0 </xsl:attribute>-->
  </xsl:attribute-set>

  <xsl:attribute-set name="region-body.odd">
    <xsl:attribute name="margin-top">
      <!--DITA for Print-->
      <xsl:value-of select="$body-margin"/>
    </xsl:attribute>
    <xsl:attribute name="margin-bottom">
      <!--DITA for Print-->
      <xsl:value-of select="$body-margin"/>
    </xsl:attribute>
    <xsl:attribute name="{if ($writing-mode = 'lr') then 'margin-left' else 'margin-right'}">
      <xsl:value-of select="$page-margin-inside"/>
    </xsl:attribute>
    <xsl:attribute name="{if ($writing-mode = 'lr') then 'margin-right' else 'margin-left'}">
      <xsl:value-of select="$page-margin-outside"/>
    </xsl:attribute>
    <!--DITA for Print-->
    <!--#ACD1E9 color is a light blue    -->
    <!-- <xsl:attribute name="background-color">#ACD1E9</xsl:attribute>-->
  </xsl:attribute-set>

  <xsl:attribute-set name="region-body.even">
    <xsl:attribute name="margin-top">
      <!--DITA for Print-->
      <xsl:value-of select="$body-margin"/>
    </xsl:attribute>
    <xsl:attribute name="margin-bottom">
      <!--DITA for Print-->
      <xsl:value-of select="$body-margin"/>
    </xsl:attribute>
    <xsl:attribute name="{if ($writing-mode = 'lr') then 'margin-left' else 'margin-right'}">
      <xsl:value-of select="$page-margin-outside"/>
    </xsl:attribute>
    <xsl:attribute name="{if ($writing-mode = 'lr') then 'margin-right' else 'margin-left'}">
      <xsl:value-of select="$page-margin-inside"/>
    </xsl:attribute>
    <!--DITA for Print-->
    <!--#C1DAD6 is a sea foam green color-->
    <!--<xsl:attribute name="background-color">#C1DAD6</xsl:attribute>-->
  </xsl:attribute-set>

  <xsl:attribute-set name="region-body.landscape">
    <xsl:attribute name="margin-top">
      <xsl:value-of select="$page-margin-landscape"/>
    </xsl:attribute>
    <xsl:attribute name="margin-bottom">
      <xsl:value-of select="$page-margin-landscape"/>
    </xsl:attribute>
    <xsl:attribute name="{if ($writing-mode = 'lr') then 'margin-left' else 'margin-right'}">
      <xsl:value-of select="$page-margin-landscape"/>
    </xsl:attribute>
    <xsl:attribute name="{if ($writing-mode = 'lr') then 'margin-right' else 'margin-left'}">
      <xsl:value-of select="$page-margin-landscape"/>
    </xsl:attribute>
  </xsl:attribute-set>

  <!--DITA for Print Exercise-->
  <!--Front Page of PDF with Harmonic background-->
  <!-- Scriptorium 25-March-2016 changed margin values from null to 0in -->
  <xsl:attribute-set name="region-body__frontmatter.first">
    <xsl:attribute name="margin-top">0in</xsl:attribute>
    <xsl:attribute name="margin-bottom">0in</xsl:attribute>
    <xsl:attribute name="margin-left">0in</xsl:attribute>
    <xsl:attribute name="margin-right">0in</xsl:attribute>
    <xsl:attribute name="{if ($writing-mode = 'lr') then 'margin-left' else 'margin-right'}"
      >0in</xsl:attribute>
    <xsl:attribute name="{if ($writing-mode = 'lr') then 'margin-right' else 'margin-left'}"
      >0in</xsl:attribute>
    <!--  #ffc000 color is a light orange    -->
    <!--<xsl:attribute name="background-color">#ffc000</xsl:attribute>-->
    <!--  KLL 2017-08-02 -->
    <!--  DITA for Print: Add background image to a page -->
    <xsl:attribute name="background-image">
      <xsl:choose>
        <xsl:when test="$DRAFT = 'yes'"
          >url(Customization/OpenTopic/common/artwork/manual_cover_draft.tif)</xsl:when>
        <xsl:otherwise>url(Customization/OpenTopic/common/artwork/manual_cover.tif)</xsl:otherwise>
      </xsl:choose>
    </xsl:attribute>
    <!-- <xsl:attribute name="background-image"
            >url(Customization/OpenTopic/common/artwork/manual_cover.tif)</xsl:attribute>-->
    <xsl:attribute name="background-repeat">no-repeat</xsl:attribute>
    <xsl:attribute name="background-position">"0,0"</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="region-body__frontmatter.odd">
    <!--DITA for Print-->
    <xsl:attribute name="margin-top">.5in </xsl:attribute>
    <xsl:attribute name="margin-bottom">.5in </xsl:attribute>
    <xsl:attribute name="margin-left">.5in</xsl:attribute>
    <xsl:attribute name="margin-right">.5in</xsl:attribute>
    <xsl:attribute name="{if ($writing-mode = 'lr') then 'margin-left' else 'margin-right'}">
      <xsl:value-of select="$page-margin-inside"/>
    </xsl:attribute>
    <xsl:attribute name="{if ($writing-mode = 'lr') then 'margin-right' else 'margin-left'}">
      <xsl:value-of select="$page-margin-outside-front"/>
    </xsl:attribute>
    <!--#ffc000 color is a light orange -->
    <xsl:attribute name="background-color">#ffc000</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="region-body__frontmatter.even">
    <!--DITA for Print-->
    <xsl:attribute name="margin-top">.5in </xsl:attribute>
    <xsl:attribute name="margin-bottom">.5in </xsl:attribute>
    <xsl:attribute name="margin-left">.5in</xsl:attribute>
    <xsl:attribute name="margin-right">.5in</xsl:attribute>
    <xsl:attribute name="{if ($writing-mode = 'lr') then 'margin-left' else 'margin-right'}">
      <xsl:value-of select="$page-margin-outside-front"/>
    </xsl:attribute>
    <xsl:attribute name="{if ($writing-mode = 'lr') then 'margin-right' else 'margin-left'}">
      <xsl:value-of select="$page-margin-inside"/>
    </xsl:attribute>
    <!--#ffc000 color is a light orange -->
    <xsl:attribute name="background-color">#ffc000</xsl:attribute>
  </xsl:attribute-set>

  <!-- legacy attribute set -->
  <xsl:attribute-set name="region-body__index" use-attribute-sets="region-body__index.odd"/>

  <xsl:attribute-set name="region-body__index.odd" use-attribute-sets="region-body.odd">
    <xsl:attribute name="column-count">2</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="region-body__index.even" use-attribute-sets="region-body.even">
    <xsl:attribute name="column-count">2</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="region-before">
    <xsl:attribute name="extent">
      <xsl:value-of select="$page-margin-top"/>
    </xsl:attribute>
    <xsl:attribute name="display-align">before</xsl:attribute>
  </xsl:attribute-set>
  <!--DITA for Print Exercise-->
  <xsl:attribute-set name="region-before.first">
    <xsl:attribute name="extent">
      <xsl:value-of select="$header-extent-first"/>
    </xsl:attribute>
    <xsl:attribute name="display-align">before</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="region-after">
    <xsl:attribute name="extent">
      <xsl:value-of select="$page-margin-bottom"/>
    </xsl:attribute>
    <xsl:attribute name="display-align">after</xsl:attribute>
  </xsl:attribute-set>

  <!--DITA for Print-->
  <xsl:attribute-set name="region-backmatter.first">
    <xsl:attribute name="margin-top">
      <xsl:value-of select="$page-margins"/>
    </xsl:attribute>
    <xsl:attribute name="margin-bottom">
      <xsl:value-of select="$page-margins"/>
    </xsl:attribute>
    <xsl:attribute name="margin-left">
      <xsl:value-of select="$page-margins"/>
    </xsl:attribute>
    <xsl:attribute name="margin-right">
      <xsl:value-of select="$page-margins"/>
    </xsl:attribute>
  </xsl:attribute-set>

  <!--DITA for Print-->
  <xsl:attribute-set name="region-backmatter.even">
    <xsl:attribute name="margin-top">
      <xsl:value-of select="$page-margins"/>
    </xsl:attribute>
    <xsl:attribute name="margin-bottom">
      <xsl:value-of select="$page-margins"/>
    </xsl:attribute>
    <xsl:attribute name="margin-left">
      <xsl:value-of select="$page-margins"/>
    </xsl:attribute>
    <xsl:attribute name="margin-right">
      <xsl:value-of select="$page-margins"/>
    </xsl:attribute>
  </xsl:attribute-set>

  <!--DITA for Print-->
  <xsl:attribute-set name="region-backmatter.odd">
    <xsl:attribute name="margin-top">
      <xsl:value-of select="$page-margins"/>
    </xsl:attribute>
    <xsl:attribute name="margin-bottom">
      <xsl:value-of select="$page-margins"/>
    </xsl:attribute>
    <xsl:attribute name="margin-left">
      <xsl:value-of select="$page-margins"/>
    </xsl:attribute>
    <xsl:attribute name="margin-right">
      <xsl:value-of select="$page-margins"/>
    </xsl:attribute>
  </xsl:attribute-set>

  <!--DITA for Print-->
  <!-- Scriptorium 25-March-2016 changed margin values from null to 0in -->
  <xsl:attribute-set name="region-backmatter.last">
    <xsl:attribute name="margin-top">0in</xsl:attribute>
    <xsl:attribute name="margin-bottom">0in</xsl:attribute>
    <xsl:attribute name="margin-left">0in</xsl:attribute>
    <xsl:attribute name="margin-right">0in</xsl:attribute>
    <xsl:attribute name="{if ($writing-mode = 'lr') then 'margin-left' else 'margin-right'}"
      >0in</xsl:attribute>
    <xsl:attribute name="{if ($writing-mode = 'lr') then 'margin-right' else 'margin-left'}"
      >0in</xsl:attribute>
    <!--  KLL 2016-10-06 Removed back cover image for 2016 rebranding-->
  </xsl:attribute-set>
</xsl:stylesheet>
