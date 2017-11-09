<?xml version='1.0'?>

<!--
Copyright © 2004-2006 by Idiom Technologies, Inc. All rights reserved.
IDIOM is a registered trademark of Idiom Technologies, Inc. and WORLDSERVER
and WORLDSTART are trademarks of Idiom Technologies, Inc. All other
trademarks are the property of their respective owners.

IDIOM TECHNOLOGIES, INC. IS DELIVERING THE SOFTWARE "AS IS," WITH
ABSOLUTELY NO WARRANTIES WHATSOEVER, WHETHER EXPRESS OR IMPLIED,  AND IDIOM
TECHNOLOGIES, INC. DISCLAIMS ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING
BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
PURPOSE AND WARRANTY OF NON-INFRINGEMENT. IDIOM TECHNOLOGIES, INC. SHALL NOT
BE LIABLE FOR INDIRECT, INCIDENTAL, SPECIAL, COVER, PUNITIVE, EXEMPLARY,
RELIANCE, OR CONSEQUENTIAL DAMAGES (INCLUDING BUT NOT LIMITED TO LOSS OF
ANTICIPATED PROFIT), ARISING FROM ANY CAUSE UNDER OR RELATED TO  OR ARISING
OUT OF THE USE OF OR INABILITY TO USE THE SOFTWARE, EVEN IF IDIOM
TECHNOLOGIES, INC. HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES.

Idiom Technologies, Inc. and its licensors shall not be liable for any
damages suffered by any person as a result of using and/or modifying the
Software or its derivatives. In no event shall Idiom Technologies, Inc.'s
liability for any damages hereunder exceed the amounts received by Idiom
Technologies, Inc. as a result of this transaction.

These terms and conditions supersede the terms and conditions in any
licensing agreement to the extent that such terms and conditions conflict
with those set forth herein.

This file is part of the DITA Open Toolkit project hosted on Sourceforge.net.
See the accompanying license.txt file for applicable licenses.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:rx="http://www.renderx.com/XSL/Extensions"
    version="2.0">

    <!-- common attribute sets -->

    <xsl:attribute-set name="common.border__top">
        <xsl:attribute name="border-top-style">solid</xsl:attribute>
        <xsl:attribute name="border-top-width">1pt</xsl:attribute>
        <xsl:attribute name="border-top-color">#797979</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="common.border__bottom">
        <xsl:attribute name="border-bottom-style">solid</xsl:attribute>
        <xsl:attribute name="border-bottom-width">1pt</xsl:attribute>
        <xsl:attribute name="border-bottom-color">#797979</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="common.border__right">
        <xsl:attribute name="border-right-style">solid</xsl:attribute>
        <xsl:attribute name="border-right-width">1pt</xsl:attribute>
        <xsl:attribute name="border-right-color">#797979</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="common.border__left">
        <xsl:attribute name="border-left-style">solid</xsl:attribute>
        <xsl:attribute name="border-left-width">1pt</xsl:attribute>
        <xsl:attribute name="border-left-color">#797979</xsl:attribute>
    </xsl:attribute-set>

    <!--DITA for Print-->
    <xsl:attribute-set name="table.frame__top">
        <xsl:attribute name="border-top-style">solid</xsl:attribute>
        <xsl:attribute name="border-top-width">1pt</xsl:attribute>
        <xsl:attribute name="border-top-color">#797979</xsl:attribute>
    </xsl:attribute-set>

    <!--DITA for Print-->
    <xsl:attribute-set name="table.frame__bottom">
        <xsl:attribute name="border-bottom-style">solid</xsl:attribute>
        <xsl:attribute name="border-bottom-width">1pt</xsl:attribute>
        <xsl:attribute name="border-bottom-color">#797979</xsl:attribute>
    </xsl:attribute-set>

    <!--DITA for Print-->
    <xsl:attribute-set name="table.frame__right">
        <xsl:attribute name="border-right-style">solid</xsl:attribute>
        <xsl:attribute name="border-right-width">1pt</xsl:attribute>
        <xsl:attribute name="border-right-color">#797979</xsl:attribute>
    </xsl:attribute-set>

    <!--DITA for Print-->
    <xsl:attribute-set name="table.frame__left">
        <xsl:attribute name="border-left-style">solid</xsl:attribute>
        <xsl:attribute name="border-left-width">1pt</xsl:attribute>
        <xsl:attribute name="border-left-color">#797979</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="table.frame__sides">
        <xsl:attribute name="border-left-style">solid</xsl:attribute>
        <xsl:attribute name="border-left-width">1pt</xsl:attribute>
        <xsl:attribute name="border-left-color">#797979</xsl:attribute>
    </xsl:attribute-set>

    <!--DITA for Print-->
    <xsl:attribute-set name="table.rule__top">
        <xsl:attribute name="border-top-style">solid</xsl:attribute>
        <xsl:attribute name="border-top-width">1pt</xsl:attribute>
        <xsl:attribute name="border-top-color">#797979</xsl:attribute>
    </xsl:attribute-set>

    <!--DITA for Print-->
    <xsl:attribute-set name="table.rule__bottom">
        <xsl:attribute name="border-bottom-style">solid</xsl:attribute>
        <xsl:attribute name="border-bottom-width">1pt</xsl:attribute>
        <xsl:attribute name="border-bottom-color">#797979</xsl:attribute>
    </xsl:attribute-set>

    <!--DITA for Print-->
    <xsl:attribute-set name="table.rule__right">
        <xsl:attribute name="border-right-style">solid</xsl:attribute>
        <xsl:attribute name="border-right-width">1pt</xsl:attribute>
        <xsl:attribute name="border-right-color">#797979</xsl:attribute>
    </xsl:attribute-set>

    <!--DITA for Print-->
    <xsl:attribute-set name="table.rule__left">
        <xsl:attribute name="border-left-style">solid</xsl:attribute>
        <xsl:attribute name="border-left-width">1pt</xsl:attribute>
        <xsl:attribute name="border-left-color">#797979</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="common.border"
        use-attribute-sets="common.border__top common.border__right common.border__bottom common.border__left"/>

    <xsl:attribute-set name="base-font">
        <xsl:attribute name="font-family">sans-serif</xsl:attribute>
        <xsl:attribute name="font-size">
            <xsl:value-of select="$default-font-size"/>
        </xsl:attribute>
        <!--DITA For Print-->
        <!--    <xsl:attribute name="line-height">
            <xsl:value-of select="$default-line-height"/>
        </xsl:attribute>-->
    </xsl:attribute-set>

    <!-- titles -->
    <xsl:attribute-set name="common.title">
        <xsl:attribute name="font-family">Titles</xsl:attribute>
    </xsl:attribute-set>

    <!-- paragraph-like blocks -->
    <xsl:attribute-set name="common.block">
        <!--   <xsl:attribute name="color">green</xsl:attribute>
        <xsl:attribute name="space-before">0.6em</xsl:attribute>
        <xsl:attribute name="space-after">0.6em</xsl:attribute>-->
    </xsl:attribute-set>

    <xsl:attribute-set name="common.link">
        <xsl:attribute name="color">blue</xsl:attribute>
        <xsl:attribute name="font-style">italic</xsl:attribute>
    </xsl:attribute-set>

    <!-- common element specific attribute sets -->

    <xsl:attribute-set name="tm">
        <xsl:attribute name="border-left-width">0pt</xsl:attribute>
        <xsl:attribute name="border-right-width">0pt</xsl:attribute>
    </xsl:attribute-set>

    <!--DITA for Print-->
    <!--  KLL 2016-09-16 Updated registered trademark (R) symbol for 2016 rebranding-->
    <xsl:attribute-set name="tm__content">
        <xsl:attribute name="font-size">40%</xsl:attribute>
        <xsl:attribute name="baseline-shift">30%</xsl:attribute>
    </xsl:attribute-set>

    <!--DITA for Print-->
    <xsl:attribute-set name="tm__content__service">
        <xsl:attribute name="font-size">100%</xsl:attribute>
        <xsl:attribute name="baseline-shift">0%</xsl:attribute>
    </xsl:attribute-set>

    <!--DITA for Print-->
    <!--  KLL 2016-09-16 Updated trademark (TM) symbol for 2016 rebranding-->
    <xsl:attribute-set name="tm__content__tm">
        <xsl:attribute name="font-size">40%</xsl:attribute>
        <xsl:attribute name="baseline-shift">30%</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="author"> </xsl:attribute-set>

    <xsl:attribute-set name="source"> </xsl:attribute-set>

    <!--DITA for Print-->
    <!-- Formats Chapter Title in PDF-->
    <xsl:attribute-set name="topic.title" use-attribute-sets="common.title">
        <xsl:attribute name="padding-bottom">6pt</xsl:attribute>
        <xsl:attribute name="border-bottom">1pt solid <xsl:value-of select="$light-accent-color"/>
        </xsl:attribute>
        <xsl:attribute name="font-family">Titles</xsl:attribute>
        <!-- <xsl:attribute name="space-before">0pt</xsl:attribute>
        <xsl:attribute name="space-after">10pt</xsl:attribute>-->
        <xsl:attribute name="font-size">19pt</xsl:attribute>
        <xsl:attribute name="font-weight">normal</xsl:attribute>
        <!-- <xsl:attribute name="line-height">10pt</xsl:attribute>-->
        <xsl:attribute name="keep-with-next.within-column">always</xsl:attribute>
        <xsl:attribute name="color">
            <xsl:value-of select="$dark-accent-color"/>
        </xsl:attribute>
        <xsl:attribute name="text-align">end</xsl:attribute>
    </xsl:attribute-set>

    <!--DITA for Print-->
    <xsl:attribute-set name="topic.title.hide" use-attribute-sets="common.title">
        <xsl:attribute name="border-bottom">0pt solid black</xsl:attribute>
        <xsl:attribute name="space-before">0pt</xsl:attribute>
        <xsl:attribute name="space-after">30pt</xsl:attribute>
        <xsl:attribute name="font-size">2pt</xsl:attribute>
        <xsl:attribute name="font-weight">bold</xsl:attribute>
        <xsl:attribute name="padding-top">0pt</xsl:attribute>
        <xsl:attribute name="color">#ffffff</xsl:attribute>
        <xsl:attribute name="line-height">4pt</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="topic.title__content">
        <xsl:attribute name="font-family">Titles</xsl:attribute>
        <xsl:attribute name="line-height">100%</xsl:attribute>
        <xsl:attribute name="border-left-width">0pt</xsl:attribute>
        <xsl:attribute name="border-right-width">0pt</xsl:attribute>
        <xsl:attribute name="keep-with-next.within-column">always</xsl:attribute>
    </xsl:attribute-set>

    <!--DITA for Print-->
    <!-- Formats Heading 1 in PDF-->
    <xsl:attribute-set name="topic.topic.title"
        use-attribute-sets="common.title common.border__bottom">
        <xsl:attribute name="space-before">17pt</xsl:attribute>
        <xsl:attribute name="space-after">0pt</xsl:attribute>
        <xsl:attribute name="font-size">17pt</xsl:attribute>
        <xsl:attribute name="font-weight">normal</xsl:attribute>
        <xsl:attribute name="line-height">19pt</xsl:attribute>
        <xsl:attribute name="keep-with-next.within-column">always</xsl:attribute>
        <xsl:attribute name="border-bottom-style">none</xsl:attribute>
        <xsl:attribute name="border-bottom-width">0pt</xsl:attribute>
        <xsl:attribute name="color">
            <xsl:value-of select="$text-color"/>
        </xsl:attribute>
        <xsl:attribute name="font-family">Titles</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="topic.topic.title__content">
        <xsl:attribute name="font-family">Titles</xsl:attribute>
        <xsl:attribute name="border-left-width">0pt</xsl:attribute>
        <xsl:attribute name="border-right-width">0pt</xsl:attribute>
    </xsl:attribute-set>

    <!--DITA for Print-->
    <!-- Formats Heading 2 in PDF-->
    <xsl:attribute-set name="topic.topic.topic.title" use-attribute-sets="common.title">
        <xsl:attribute name="space-before">11pt</xsl:attribute>
        <xsl:attribute name="space-after">0pt</xsl:attribute>
        <xsl:attribute name="font-size">15pt</xsl:attribute>
        <xsl:attribute name="font-weight">normal</xsl:attribute>
        <xsl:attribute name="line-height">17pt</xsl:attribute>
        <xsl:attribute name="keep-with-next.within-column">always</xsl:attribute>
        <xsl:attribute name="color">
            <xsl:value-of select="$text-color"/>
        </xsl:attribute>
        <xsl:attribute name="font-family">Titles</xsl:attribute>
        <xsl:attribute name="start-indent">
            <xsl:value-of select="$side-col-width"/>
        </xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="topic.topic.topic.title__content">
        <xsl:attribute name="font-family">Titles</xsl:attribute>
    </xsl:attribute-set>

    <!--DITA for Print-->
    <!-- Formats Heading 3 in PDF-->
    <xsl:attribute-set name="topic.topic.topic.topic.title"
        use-attribute-sets="base-font common.title">
        <xsl:attribute name="space-before">8pt</xsl:attribute>
        <xsl:attribute name="space-after">8pt</xsl:attribute>
        <xsl:attribute name="font-size">13pt</xsl:attribute>
        <xsl:attribute name="start-indent">
            <xsl:value-of select="$side-col-width"/>
        </xsl:attribute>
        <xsl:attribute name="font-weight">normal</xsl:attribute>
        <xsl:attribute name="line-height">14pt</xsl:attribute>
        <xsl:attribute name="keep-with-next.within-column">always</xsl:attribute>
        <xsl:attribute name="color">
            <xsl:value-of select="$text-color"/>
        </xsl:attribute>
        <xsl:attribute name="font-family">Titles</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="topic.topic.topic.topic.title__content"> </xsl:attribute-set>

    <!--DITA for Print-->
    <!-- Formats Heading 4 in PDF-->
    <xsl:attribute-set name="topic.topic.topic.topic.topic.title"
        use-attribute-sets="base-font common.title">
        <xsl:attribute name="space-before">8pt</xsl:attribute>
        <xsl:attribute name="space-after">0pt</xsl:attribute>
        <xsl:attribute name="font-size">12pt</xsl:attribute>
        <xsl:attribute name="start-indent">
            <xsl:value-of select="$side-col-width"/>
        </xsl:attribute>
        <xsl:attribute name="font-weight">normal</xsl:attribute>
        <xsl:attribute name="line-height">13pt</xsl:attribute>
        <xsl:attribute name="keep-with-next.within-column">always</xsl:attribute>
        <xsl:attribute name="color">
            <xsl:value-of select="$text-color"/>
        </xsl:attribute>
        <xsl:attribute name="font-family">Titles</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="topic.topic.topic.topic.topic.title__content"> </xsl:attribute-set>

    <xsl:attribute-set name="topic.topic.topic.topic.topic.topic.title"
        use-attribute-sets="base-font common.title">
        <xsl:attribute name="start-indent">
            <xsl:value-of select="$side-col-width"/>
        </xsl:attribute>
        <xsl:attribute name="font-style">italic</xsl:attribute>
        <xsl:attribute name="keep-with-next.within-column">always</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="topic.topic.topic.topic.topic.topic.title__content"> </xsl:attribute-set>

    <!--DITA for Print-->
    <!--  KLL 2016-08-25 Transform Change Request: more space before section titles-->
    <xsl:attribute-set name="section.title" use-attribute-sets="common.title">
        <xsl:attribute name="font-weight">regular</xsl:attribute>
        <xsl:attribute name="font-size">12pt</xsl:attribute>
        <xsl:attribute name="space-before">12pt</xsl:attribute>
        <xsl:attribute name="space-after">3pt</xsl:attribute>
        <xsl:attribute name="line-height">120%</xsl:attribute>
        <xsl:attribute name="keep-with-next.within-column">always</xsl:attribute>
        <xsl:attribute name="font-family">Titles</xsl:attribute>
        <xsl:attribute name="color">
            <xsl:value-of select="$text-color"/>
        </xsl:attribute>
        <!-- <xsl:attribute name="start-indent">
            <xsl:value-of select="$side-col-width"/>
        </xsl:attribute>-->
    </xsl:attribute-set>

    <!--  KLL 2016-07-22 Updated example title to look like fig titles -->
    <xsl:attribute-set name="example.title" use-attribute-sets="fig.title">
        <xsl:attribute name="keep-with-next.within-page">always</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="fig"> </xsl:attribute-set>
    <!--Formats figure titles-->
    <!--    23-March-2016 Transform Change Request more space after figure titles  -->
    <xsl:attribute-set name="fig.title" use-attribute-sets="base-font common.title">
        <xsl:attribute name="font-weight">regular</xsl:attribute>
        <xsl:attribute name="space-before">4pt</xsl:attribute>
        <xsl:attribute name="space-after">8pt</xsl:attribute>
        <xsl:attribute name="keep-with-previous.within-page">always</xsl:attribute>
        <xsl:attribute name="font-size">10pt</xsl:attribute>
        <xsl:attribute name="line-height">12pt</xsl:attribute>
        <!--DITA for Print-->
        <xsl:attribute name="font-family">Figure Titles</xsl:attribute>
        <xsl:attribute name="color">
            <xsl:value-of select="$text-color"/>
        </xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="topic" use-attribute-sets="base-font"> </xsl:attribute-set>
    <xsl:attribute-set name="topic"/>


    <xsl:attribute-set name="titlealts" use-attribute-sets="common.border">
        <xsl:attribute name="background-color">#f0f0d0</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="navtitle" use-attribute-sets="common.title"> </xsl:attribute-set>

    <xsl:attribute-set name="navtitle__label">
        <xsl:attribute name="font-weight">bold</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="searchtitle"> </xsl:attribute-set>

    <xsl:attribute-set name="searchtitle__label">
        <xsl:attribute name="font-weight">bold</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="body__toplevel" use-attribute-sets="base-font">
        <xsl:attribute name="start-indent">
            <xsl:value-of select="$side-col-width"/>
        </xsl:attribute>
    </xsl:attribute-set>
    <xsl:attribute-set name="body__secondLevel" use-attribute-sets="base-font">
        <xsl:attribute name="start-indent"> .5in </xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="body" use-attribute-sets="base-font">
        <xsl:attribute name="start-indent">
            <xsl:value-of select="$side-col-width"/>
        </xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="abstract" use-attribute-sets="body"> </xsl:attribute-set>
    <!--KLL Changed attribute set from body to common.block to apply consistant spacing from topic titles. -->
    <xsl:attribute-set name="shortdesc" use-attribute-sets="common.block">
        <xsl:attribute name="keep-with-next.within-column">always</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="topic__shortdesc" use-attribute-sets="common.block">
        <xsl:attribute name="keep-with-next.within-column">always</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="section" use-attribute-sets="base-font">
        <xsl:attribute name="line-height">
            <xsl:value-of select="$default-line-height"/>
        </xsl:attribute>
        <!--<xsl:attribute name="space-before">0.6em</xsl:attribute>-->
    </xsl:attribute-set>

    <!--DITA for Print-->
    <xsl:attribute-set name="section__content">
        <xsl:attribute name="font-size">
            <xsl:value-of select="$default-font-size"/>
        </xsl:attribute>
        <xsl:attribute name="line-height">
            <xsl:value-of select="$default-line-height"/>
        </xsl:attribute>
        <xsl:attribute name="font-family">Sans</xsl:attribute>
        <xsl:attribute name="font-weight">normal</xsl:attribute>
    </xsl:attribute-set>

    <!--  KLL 2016-09-07 Transform Change Request: Add "Example:" prefix and other formatting -->
    <xsl:attribute-set name="example">
        <xsl:attribute name="border-top-style">none</xsl:attribute>
        <xsl:attribute name="border-bottom-style">none</xsl:attribute>
        <xsl:attribute name="border-left-style">none</xsl:attribute>
        <xsl:attribute name="border-right-style">none</xsl:attribute>
        <xsl:attribute name="margin-right">0in</xsl:attribute>
        <xsl:attribute name="margin-left">0in</xsl:attribute>
        <xsl:attribute name="font-size">
            <xsl:value-of select="$default-font-size"/>
        </xsl:attribute>
        <xsl:attribute name="line-height">
            <xsl:value-of select="$default-line-height"/>
        </xsl:attribute>
        <xsl:attribute name="text-indent">0em</xsl:attribute>
        <xsl:attribute name="padding">0pt</xsl:attribute>
        <xsl:attribute name="font-weight">bold</xsl:attribute>
        <xsl:attribute name="space-before">12pt</xsl:attribute>
        <xsl:attribute name="keep-together.within-page">always</xsl:attribute>
    </xsl:attribute-set>

    <!--  KLL 2016-09-07 Transform Change Request: Add "Example:" prefix and other formatting -->
    <xsl:attribute-set name="example__content" use-attribute-sets="common.block">
        <xsl:attribute name="margin-right">0in</xsl:attribute>
        <xsl:attribute name="margin-left">0in</xsl:attribute>
        <xsl:attribute name="text-indent">0em</xsl:attribute>
        <xsl:attribute name="padding">0pt</xsl:attribute>
        <xsl:attribute name="font-weight">normal</xsl:attribute>
    </xsl:attribute-set>


    <xsl:attribute-set name="desc">
        <xsl:attribute name="border-left-width">0pt</xsl:attribute>
        <xsl:attribute name="border-right-width">0pt</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="prolog" use-attribute-sets="base-font">
        <xsl:attribute name="start-indent">72pt</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="p" use-attribute-sets="common.block">
        <!--<xsl:attribute name="text-indent">0em</xsl:attribute>-->
    </xsl:attribute-set>

    <xsl:attribute-set name="lq" use-attribute-sets="base-font common.border">
        <xsl:attribute name="space-before">10pt</xsl:attribute>
        <xsl:attribute name="padding-left">6pt</xsl:attribute>
        <xsl:attribute name="start-indent">92pt</xsl:attribute>
        <xsl:attribute name="end-indent">92pt</xsl:attribute>
        <xsl:attribute name="text-align">start</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="lq_simple" use-attribute-sets="base-font common.border">
        <xsl:attribute name="space-before">10pt</xsl:attribute>
        <xsl:attribute name="space-after">10pt</xsl:attribute>
        <xsl:attribute name="padding-left">6pt</xsl:attribute>
        <xsl:attribute name="start-indent">92pt</xsl:attribute>
        <xsl:attribute name="end-indent">92pt</xsl:attribute>
        <xsl:attribute name="text-align">start</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="lq_link" use-attribute-sets="base-font common.link">
        <xsl:attribute name="space-after">10pt</xsl:attribute>
        <xsl:attribute name="end-indent">92pt</xsl:attribute>
        <xsl:attribute name="text-align">end</xsl:attribute>
        <xsl:attribute name="font-weight">bold</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="lq_title" use-attribute-sets="base-font">
        <xsl:attribute name="space-after">10pt</xsl:attribute>
        <xsl:attribute name="end-indent">92pt</xsl:attribute>
        <xsl:attribute name="text-align">end</xsl:attribute>
        <xsl:attribute name="font-weight">bold</xsl:attribute>
        <xsl:attribute name="font-style">italic</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="q">
        <xsl:attribute name="border-left-width">0pt</xsl:attribute>
        <xsl:attribute name="border-right-width">0pt</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="figgroup">
        <xsl:attribute name="border-left-width">0pt</xsl:attribute>
        <xsl:attribute name="border-right-width">0pt</xsl:attribute>
    </xsl:attribute-set>

    <!--DITA for Print-->
    <xsl:attribute-set name="note" use-attribute-sets="common.block">
        <xsl:attribute name="font-size">10pt</xsl:attribute>
        <xsl:attribute name="space-before">25pt</xsl:attribute>
        <xsl:attribute name="space-after">25pt</xsl:attribute>
        <xsl:attribute name="line-height">12pt</xsl:attribute>
        <xsl:attribute name="margin-right">.3in</xsl:attribute>
        <xsl:attribute name="margin-left">.0in</xsl:attribute>
        <xsl:attribute name="text-align">left</xsl:attribute>
        <!--  <xsl:attribute name="border-left">2pt double #990033</xsl:attribute>
        <xsl:attribute name="border-right">2pt double #990033</xsl:attribute>-->
        <xsl:attribute name="padding-left">5pt</xsl:attribute>
        <xsl:attribute name="padding-right">5pt</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="note__table" use-attribute-sets="common.block"> </xsl:attribute-set>

    <xsl:attribute-set name="note__image__column">
        <xsl:attribute name="column-number">1</xsl:attribute>
        <xsl:attribute name="column-width">.3in</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="note__text__column">
        <xsl:attribute name="column-number">2</xsl:attribute>
        <xsl:attribute name="column-width">4in</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="note__image__entry">
        <xsl:attribute name="padding-right">0pt</xsl:attribute>
        <xsl:attribute name="start-indent">.0in</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="note__text__entry">
        <xsl:attribute name="start-indent">0in</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="note__label">
        <xsl:attribute name="border-left-width">0pt</xsl:attribute>
        <xsl:attribute name="border-right-width">0pt</xsl:attribute>
        <xsl:attribute name="font-weight">bold</xsl:attribute>

        <!--DITA for Print-->
        <xsl:attribute name="color">#000000</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="note__label__note"> </xsl:attribute-set>

    <xsl:attribute-set name="note__label__notice"> </xsl:attribute-set>

    <xsl:attribute-set name="note__label__tip"> </xsl:attribute-set>

    <xsl:attribute-set name="note__label__fastpath"> </xsl:attribute-set>

    <xsl:attribute-set name="note__label__restriction"> </xsl:attribute-set>

    <xsl:attribute-set name="note__label__important"> </xsl:attribute-set>

    <xsl:attribute-set name="note__label__remember"> </xsl:attribute-set>

    <xsl:attribute-set name="note__label__attention"> </xsl:attribute-set>

    <xsl:attribute-set name="note__label__caution"> </xsl:attribute-set>

    <xsl:attribute-set name="note__label__danger"> </xsl:attribute-set>

    <!--   <xsl:attribute-set name="note__label__laser_danger"> </xsl:attribute-set>-->

    <xsl:attribute-set name="note__label__warning"> </xsl:attribute-set>

    <xsl:attribute-set name="note__label__other"> </xsl:attribute-set>

    <xsl:attribute-set name="ph">
        <!-- [SP] 2016-09-26 sfb: To change text color, you need to use the form shown after the comment below: -->
        <!--        <xsl:attribute name="decoration">
            <xsl:choose>
                <xsl:when test="contains(@outputclass, 'font-color-red')">
                    <xsl:attribute name="text-color">#ff0000</xsl:attribute>
                </xsl:when>
            </xsl:choose>
        </xsl:attribute>-->
        <xsl:attribute name="color">
            <xsl:choose>
                <xsl:when test="contains(@outputclass, 'font-color-red')">
                    <xsl:text>#ff0000</xsl:text>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:text>#000000</xsl:text>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:attribute>

    </xsl:attribute-set>

    <xsl:attribute-set name="pre" use-attribute-sets="base-font common.block">
        <xsl:attribute name="white-space-treatment">preserve</xsl:attribute>
        <xsl:attribute name="white-space-collapse">false</xsl:attribute>
        <xsl:attribute name="linefeed-treatment">preserve</xsl:attribute>
        <xsl:attribute name="wrap-option">wrap</xsl:attribute>
        <!--DITA for Print-->
        <xsl:attribute name="background-color">#e6e6e6</xsl:attribute>
        <xsl:attribute name="font-family">monospace</xsl:attribute>
        <xsl:attribute name="line-height">106%</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="__spectitle">
        <xsl:attribute name="font-weight">bold</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="__border__top">
        <xsl:attribute name="border-top-color">black</xsl:attribute>
        <xsl:attribute name="border-top-width">thin</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="__border__bot">
        <xsl:attribute name="border-bottom-color">black</xsl:attribute>
        <xsl:attribute name="border-bottom-width">thin</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="__border__sides">
        <xsl:attribute name="border-left-color">black</xsl:attribute>
        <xsl:attribute name="border-left-width">thin</xsl:attribute>
        <xsl:attribute name="border-right-color">black</xsl:attribute>
        <xsl:attribute name="border-right-width">thin</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="__border__all" use-attribute-sets="common.border"> </xsl:attribute-set>

    <xsl:attribute-set name="lines" use-attribute-sets="base-font">
        <xsl:attribute name="space-before">0.8em</xsl:attribute>
        <xsl:attribute name="space-after">0.8em</xsl:attribute>
        <!--        <xsl:attribute name="white-space-treatment">ignore-if-after-linefeed</xsl:attribute>-->
        <xsl:attribute name="white-space-collapse">true</xsl:attribute>
        <xsl:attribute name="linefeed-treatment">preserve</xsl:attribute>
        <xsl:attribute name="wrap-option">wrap</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="keyword">
        <xsl:attribute name="border-left-width">0pt</xsl:attribute>
        <xsl:attribute name="border-right-width">0pt</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="term">
        <xsl:attribute name="border-left-width">0pt</xsl:attribute>
        <xsl:attribute name="border-right-width">0pt</xsl:attribute>
        <xsl:attribute name="font-style">italic</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="ph">
        <xsl:attribute name="border-left-width">0pt</xsl:attribute>
        <xsl:attribute name="border-right-width">0pt</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="boolean">
        <xsl:attribute name="border-left-width">0pt</xsl:attribute>
        <xsl:attribute name="border-right-width">0pt</xsl:attribute>
        <xsl:attribute name="color">green</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="state">
        <xsl:attribute name="border-left-width">0pt</xsl:attribute>
        <xsl:attribute name="border-right-width">0pt</xsl:attribute>
        <xsl:attribute name="color">red</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="alt"> </xsl:attribute-set>

    <xsl:attribute-set name="object"> </xsl:attribute-set>

    <xsl:attribute-set name="param"> </xsl:attribute-set>

    <xsl:attribute-set name="draft-comment" use-attribute-sets="common.border">
        <xsl:attribute name="keep-with-next.within-column">auto</xsl:attribute>
        <xsl:attribute name="background-color">#ffff80</xsl:attribute>
        <xsl:attribute name="border-color">#ffff80</xsl:attribute>
        <xsl:attribute name="color">#3333cc</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="draft-comment__label">
        <xsl:attribute name="font-weight">bold</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="required-cleanup">
        <xsl:attribute name="background">yellow</xsl:attribute>

        <xsl:attribute name="color">#CC3333</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="required-cleanup__label">
        <xsl:attribute name="font-weight">bold</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="fn">
        <xsl:attribute name="font-size">8pt</xsl:attribute>
        <xsl:attribute name="color">purple</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="fn__id">
        <xsl:attribute name="font-style">italic</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="fn__callout">
        <xsl:attribute name="keep-with-previous.within-line">always</xsl:attribute>
        <xsl:attribute name="baseline-shift">super</xsl:attribute>
        <xsl:attribute name="font-size">75%</xsl:attribute>
        <!--DITA for Print-->
        <xsl:attribute name="font-weight">bold</xsl:attribute>
        <xsl:attribute name="color">
            <xsl:value-of select="$light-accent-color"/>
        </xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="fn__body" use-attribute-sets="base-font">
        <xsl:attribute name="provisional-distance-between-starts">8mm</xsl:attribute>
        <xsl:attribute name="provisional-label-separation">2mm</xsl:attribute>
        <xsl:attribute name="line-height">1.2</xsl:attribute>
        <xsl:attribute name="start-indent">0pt</xsl:attribute>
        <!--DITA for Print-->
        <xsl:attribute name="font-family">sans-serif</xsl:attribute>
        <xsl:attribute name="font-size">9pt</xsl:attribute>
        <xsl:attribute name="font-style">italic</xsl:attribute>
        <xsl:attribute name="color">
            <xsl:value-of select="$text-color"/>
        </xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="__align__left">
        <xsl:attribute name="text-align">start</xsl:attribute>
        <xsl:attribute name="display-align">before</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="__align__right">
        <xsl:attribute name="text-align">end</xsl:attribute>
        <xsl:attribute name="display-align">before</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="__align__center">
        <xsl:attribute name="text-align">center</xsl:attribute>
        <xsl:attribute name="display-align">before</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="__align__justify">
        <xsl:attribute name="text-align">justify</xsl:attribute>
        <xsl:attribute name="display-align">before</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="indextermref">
        <xsl:attribute name="font-style">italic</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="cite">
        <xsl:attribute name="font-style">italic</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="concept"> </xsl:attribute-set>

    <xsl:attribute-set name="conbody" use-attribute-sets="body"> </xsl:attribute-set>

    <xsl:attribute-set name="topichead"> </xsl:attribute-set>

    <xsl:attribute-set name="topicgroup"> </xsl:attribute-set>

    <xsl:attribute-set name="topicmeta"> </xsl:attribute-set>

    <xsl:attribute-set name="searchtitle"> </xsl:attribute-set>

    <xsl:attribute-set name="searchtitle__label">
        <xsl:attribute name="font-weight">bold</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="publisher"> </xsl:attribute-set>

    <xsl:attribute-set name="copyright"> </xsl:attribute-set>

    <xsl:attribute-set name="copyryear"> </xsl:attribute-set>

    <xsl:attribute-set name="copyrholder"> </xsl:attribute-set>

    <xsl:attribute-set name="critdates"> </xsl:attribute-set>

    <xsl:attribute-set name="created"> </xsl:attribute-set>

    <xsl:attribute-set name="revised"> </xsl:attribute-set>

    <xsl:attribute-set name="permissions"> </xsl:attribute-set>

    <xsl:attribute-set name="category"> </xsl:attribute-set>

    <xsl:attribute-set name="audience"> </xsl:attribute-set>

    <xsl:attribute-set name="keywords"> </xsl:attribute-set>

    <xsl:attribute-set name="prodinfo"> </xsl:attribute-set>

    <xsl:attribute-set name="prodname"> </xsl:attribute-set>

    <xsl:attribute-set name="prodrelease"> </xsl:attribute-set>

    <xsl:attribute-set name="vrmlist"> </xsl:attribute-set>

    <xsl:attribute-set name="vrm"> </xsl:attribute-set>

    <xsl:attribute-set name="brand"> </xsl:attribute-set>

    <xsl:attribute-set name="series"> </xsl:attribute-set>

    <xsl:attribute-set name="platform"> </xsl:attribute-set>

    <xsl:attribute-set name="prognum"> </xsl:attribute-set>

    <xsl:attribute-set name="featnum"> </xsl:attribute-set>

    <xsl:attribute-set name="component"> </xsl:attribute-set>

    <xsl:attribute-set name="othermeta"> </xsl:attribute-set>

    <xsl:attribute-set name="resourceid"> </xsl:attribute-set>

    <xsl:attribute-set name="reference"> </xsl:attribute-set>

    <xsl:attribute-set name="refbody" use-attribute-sets="body"> </xsl:attribute-set>

    <xsl:attribute-set name="refsyn"> </xsl:attribute-set>

    <xsl:attribute-set name="metadata"> </xsl:attribute-set>

    <xsl:attribute-set name="image__float"> </xsl:attribute-set>

    <!--Dynamically scale images to page width -->
    <!-- Applies to oversize images with a width larger than the page -->
    <!--    Applies to images with "break" value for placement attribute-->
    <xsl:attribute-set name="image__block">
        <xsl:attribute name="content-width">scale-to-fit</xsl:attribute>
         <xsl:attribute name="content-height">100%</xsl:attribute>
        <xsl:attribute name="width">100%</xsl:attribute>
        <xsl:attribute name="scaling">uniform</xsl:attribute>
        <!-- [SP] 2016-09-26 sfb: Changed attribute name 'align' to text-align-->
        <!--<xsl:attribute name="text-align">center</xsl:attribute>-->
    </xsl:attribute-set>

    <!--Applies to images with ïnline" or no value for placement attribute  -->
    <xsl:attribute-set name="image__inline">
        <xsl:attribute name="content-width">auto</xsl:attribute>
        <xsl:attribute name="content-height">auto</xsl:attribute>
        <xsl:attribute name="width">auto</xsl:attribute>
        <xsl:attribute name="scaling">uniform</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="image"> </xsl:attribute-set>

    <xsl:attribute-set name="flag.image" use-attribute-sets="image"> </xsl:attribute-set>

    <xsl:attribute-set name="__unresolved__conref">
        <xsl:attribute name="color">#CC3333</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="__fo__root" use-attribute-sets="base-font">
        <xsl:attribute name="font-family">serif</xsl:attribute>
        <xsl:attribute name="xml:lang" select="translate($locale, '_', '-')"/>
        <xsl:attribute name="writing-mode" select="$writing-mode"/>
    </xsl:attribute-set>
    <!-- Use fo:force-page-count to impose a constraint on the number of pages in a page-sequence -->
    <xsl:attribute-set name="__force__page__count">
        <xsl:attribute name="force-page-count">
            <xsl:choose>
                <xsl:when test="name(/*) = 'bookmap'">
                    <xsl:value-of select="'no-force'"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:value-of select="'auto'"/>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:attribute>
    </xsl:attribute-set>

    <!--DITA for Print-->
    <xsl:attribute-set name="xref__mini__toc">
        <xsl:attribute name="color">
            <xsl:value-of select="$light-accent-color"/>
        </xsl:attribute>
        <xsl:attribute name="font-style">italic</xsl:attribute>
        <!-- <xsl:attribute name="font-weight">bold</xsl:attribute>-->
    </xsl:attribute-set>
</xsl:stylesheet>
