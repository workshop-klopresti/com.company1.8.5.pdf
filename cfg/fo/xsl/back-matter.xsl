<?xml version='1.0'?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:opentopic="http://www.idiominc.com/opentopic"
	exclude-result-prefixes="opentopic" version="2.0">

	<xsl:variable name="map" select="//opentopic:map"/>

	<xsl:template name="createBackMatter">
		<fo:page-sequence master-reference="back-matter">
			<fo:flow flow-name="xsl-region-body">
				<fo:block>
					<xsl:call-template name="insertDraftImage"/>
				</fo:block>
				<fo:block id="endofdoc"/>
							<!--DITA for Print-->
				<fo:block-container xsl:use-attribute-sets="__backmatter__container">
					<fo:block xsl:use-attribute-sets="__backmatter__website">
						<xsl:text>www.harmonicinc.com</xsl:text>
					</fo:block>
					<fo:block xsl:use-attribute-sets="__backmatter__publish">
						<xsl:text>Copyright &#169; </xsl:text>
						<xsl:choose>
							<xsl:when test="$productRevisedDate">
								<xsl:value-of select="$productRevisedDate"/>
							</xsl:when>
							<xsl:otherwise>
								<xsl:value-of
									select="format-dateTime(current-dateTime(), '[Y0001]')"/>
							</xsl:otherwise>
						</xsl:choose>
						<xsl:text> </xsl:text>
						<xsl:text>Harmonic Inc. All rights reserved.</xsl:text>
					</fo:block>
				</fo:block-container>
			</fo:flow>
		</fo:page-sequence>
	</xsl:template>

</xsl:stylesheet>
