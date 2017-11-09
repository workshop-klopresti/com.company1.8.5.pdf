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
    xmlns:fo="http://www.w3.org/1999/XSL/Format" version="2.0">

    <!--  KLL 2016-09-16 Updated font styles and placement for 2016 rebranding-->
    
    <xsl:attribute-set name="__frontmatter">
        <xsl:attribute name="text-align">left</xsl:attribute>
        <xsl:attribute name="margin-top">1.8in</xsl:attribute>
        <xsl:attribute name="margin-bottom">1.0in</xsl:attribute>
    </xsl:attribute-set>

  <!--  <xsl:attribute-set name="__frontmatter__title" use-attribute-sets="common.title">
        <xsl:attribute name="font-size">32pt</xsl:attribute>
        <xsl:attribute name="font-weight">regular</xsl:attribute>
        <xsl:attribute name="text-align">left</xsl:attribute>
        <!-\-<xsl:attribute name="text-indent">180pt</xsl:attribute>-\->
        <xsl:attribute name="font-family">sans-serif</xsl:attribute>
        <xsl:attribute name="line-height">90%</xsl:attribute>
        <xsl:attribute name="margin-top">0pt</xsl:attribute>
        <xsl:attribute name="margin-bottom">15pt</xsl:attribute>
        <xsl:attribute name="margin-left">2.3in</xsl:attribute>
        <xsl:attribute name="color">
            <xsl:value-of select="$dark-accent-color"/>
        </xsl:attribute>
    </xsl:attribute-set>-->
    
    
    <xsl:attribute-set name="__frontmatter__product" use-attribute-sets="common.title">
        <xsl:attribute name="font-family">Mr Jones</xsl:attribute>
        <xsl:attribute name="font-size">28pt</xsl:attribute>
        <xsl:attribute name="font-style">normal</xsl:attribute>
        <xsl:attribute name="font-weight">normal</xsl:attribute>
        <xsl:attribute name="margin-left">.625in</xsl:attribute>
        <xsl:attribute name="margin-top">0pt</xsl:attribute>
        <xsl:attribute name="text-align">left</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="__frontmatter__subtitle" use-attribute-sets="common.title">
        <xsl:attribute name="color">#bcbec0</xsl:attribute>
        <xsl:attribute name="font-family">Mr Jones</xsl:attribute>
        <xsl:attribute name="font-size">12pt</xsl:attribute>
        <xsl:attribute name="font-style">normal</xsl:attribute>
        <xsl:attribute name="font-weight">normal</xsl:attribute>
        <xsl:attribute name="line-height">90%</xsl:attribute>
        <xsl:attribute name="margin-bottom">15pt</xsl:attribute>
        <xsl:attribute name="margin-left">.625in</xsl:attribute>
        <xsl:attribute name="margin-top">0pt</xsl:attribute>
        <xsl:attribute name="text-align">left</xsl:attribute>
        <xsl:attribute name="text-transform">uppercase</xsl:attribute>   
    </xsl:attribute-set>

    <!--Applied to the value of $productComponent-->
    <xsl:attribute-set name="__frontmatter__component">
        <xsl:attribute name="color">
            <xsl:value-of select="$dark-accent-color"/>
        </xsl:attribute>
        <xsl:attribute name="font-family">Mr Jones</xsl:attribute>
        <xsl:attribute name="font-size">24pt</xsl:attribute>
        <xsl:attribute name="font-style">normal</xsl:attribute>
        <xsl:attribute name="font-weight">normal</xsl:attribute>
        <xsl:attribute name="line-height">90%</xsl:attribute>
        <xsl:attribute name="text-align">left</xsl:attribute>
        <xsl:attribute name="margin-bottom">5pt</xsl:attribute>
        <xsl:attribute name="margin-left">.625in</xsl:attribute>
        <xsl:attribute name="margin-top">5pt</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="__frontmatter__release">
        <xsl:attribute name="color">
            <xsl:value-of select="$light-accent-color"/>
        </xsl:attribute>
        <xsl:attribute name="font-family">Mr Jones</xsl:attribute>
        <xsl:attribute name="font-size">10pt</xsl:attribute>
        <xsl:attribute name="font-style">normal</xsl:attribute>
        <xsl:attribute name="font-weight">bold</xsl:attribute>
        <xsl:attribute name="line-height">90%</xsl:attribute>
        <xsl:attribute name="text-align">left</xsl:attribute>
        <xsl:attribute name="margin-bottom">.15in</xsl:attribute>
        <xsl:attribute name="margin-left">.625in</xsl:attribute>
    </xsl:attribute-set>

    <!--Applied to the value of $documentCategory-->
    <xsl:attribute-set name="__frontmatter__document__category">
        <xsl:attribute name="color">black</xsl:attribute>
        <xsl:attribute name="font-family">Mr Jones</xsl:attribute>
        <xsl:attribute name="font-size">12pt</xsl:attribute>
        <xsl:attribute name="font-style">normal</xsl:attribute>
        <xsl:attribute name="font-weight">bold</xsl:attribute>
        <xsl:attribute name="text-align">left</xsl:attribute>
        <xsl:attribute name="space-before">2pt</xsl:attribute>
        <xsl:attribute name="margin-left">.625in</xsl:attribute>
    </xsl:attribute-set>


    <xsl:attribute-set name="__frontmatter__version">
        <xsl:attribute name="font-size">24pt</xsl:attribute>
        <xsl:attribute name="text-align">left</xsl:attribute>
        <xsl:attribute name="margin-left">2.3in</xsl:attribute>
       <!-- <xsl:attribute name="font-family">normal</xsl:attribute>-->
   <!--     <xsl:attribute name="line-height">21pt</xsl:attribute>
        <xsl:attribute name="margin-top">5pt</xsl:attribute>
        <xsl:attribute name="margin-bottom">5pt</xsl:attribute>-->
        <xsl:attribute name="color">
            <xsl:value-of select="$dark-accent-color"/>
        </xsl:attribute>
    </xsl:attribute-set>

    <!--DITA for Print-->
    <xsl:attribute-set name="__frontmatter__logo">
        <xsl:attribute name="text-align">right</xsl:attribute>
    </xsl:attribute-set>

    <!--DITA for Print-->
    <xsl:attribute-set name="__frontmatter__link">
        <xsl:attribute name="font-size">12pt</xsl:attribute>
        <xsl:attribute name="font-weight">bold</xsl:attribute>
        <xsl:attribute name="text-align">right</xsl:attribute>
        <xsl:attribute name="font-family">sans-serif</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="__frontmatter__owner" use-attribute-sets="common.title">
        <xsl:attribute name="space-before">36pt</xsl:attribute>
        <xsl:attribute name="font-size">11pt</xsl:attribute>
        <xsl:attribute name="font-weight">bold</xsl:attribute>
        <xsl:attribute name="line-height">normal</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="__frontmatter__owner__container">
        <xsl:attribute name="position">absolute</xsl:attribute>
        <xsl:attribute name="top">210mm</xsl:attribute>
        <xsl:attribute name="bottom">20mm</xsl:attribute>
        <xsl:attribute name="right">20mm</xsl:attribute>
        <xsl:attribute name="left">20mm</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="__frontmatter__owner__container_content">
        <xsl:attribute name="text-align">center</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="__frontmatter__mainbooktitle"/>

    <xsl:attribute-set name="__frontmatter_copyright">
        <xsl:attribute name="font-size">24pt</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="__frontmatter__booklibrary">
        <!--<xsl:attribute name=""></xsl:attribute>-->
    </xsl:attribute-set>

    <xsl:attribute-set name="bookmap.summary">
        <xsl:attribute name="font-size">9pt</xsl:attribute>
    </xsl:attribute-set>

    <!--DITA for Print-->
    <xsl:attribute-set name="__frontmatter__logo__container">
        <xsl:attribute name="position">absolute</xsl:attribute>
        <xsl:attribute name="top">8.35in</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="__frontmatter__draft">
        <xsl:attribute name="font-size">14pt</xsl:attribute>
        <xsl:attribute name="text-align">left</xsl:attribute>
        <xsl:attribute name="font-family">sans-serif</xsl:attribute>
        <xsl:attribute name="background-color">#ffff80</xsl:attribute>
           </xsl:attribute-set>
    
    <xsl:attribute-set name="__frontmatter__draft__container">
        <xsl:attribute name="position">absolute</xsl:attribute>
        <xsl:attribute name="top">8.5in</xsl:attribute>
        <xsl:attribute name="left">1in</xsl:attribute>
        <xsl:attribute name="width">2.6in</xsl:attribute>
    </xsl:attribute-set>
   
    <xsl:attribute-set name="__frontmatter__revision">
        <xsl:attribute name="font-size">9pt</xsl:attribute>
        <xsl:attribute name="text-align">left</xsl:attribute>
        <xsl:attribute name="font-family">sans-serif</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="__frontmatter__revision__container">
        <xsl:attribute name="position">absolute</xsl:attribute>
        <xsl:attribute name="top">10in</xsl:attribute>
        <xsl:attribute name="left">1in</xsl:attribute>
            </xsl:attribute-set>
    
    <!-- NOTICES pages -->
    <xsl:attribute-set name="notices-container">
        <xsl:attribute name="font-size">10pt</xsl:attribute>
        <xsl:attribute name="font-family">sans-serif</xsl:attribute>
        <!-- DEBUG  -->
        <!--<xsl:attribute name="background-color">orange</xsl:attribute>-->
    </xsl:attribute-set>
</xsl:stylesheet>
