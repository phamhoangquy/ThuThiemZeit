<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
	<xsl:template match="/BannerList">
		<section class="home-banner">
			<div class="container-fuild">
				<div class="swiper-container">
					<div class="swiper-wrapper">
						<xsl:apply-templates select="Banner"></xsl:apply-templates>
						
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="Banner">
		<div class="swiper-slide">
			<div class="wrapper">
				<xsl:attribute name="style">
					<xsl:text disable-output-escaping="yes">background-image:url("</xsl:text>
					<xsl:value-of disable-output-escaping="yes" select="ImageUrl"></xsl:value-of>
					<xsl:text disable-output-escaping="yes">")</xsl:text>
				</xsl:attribute>
			</div>
			<div class="caption">
				<h2 class="title-caption"><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></h2>
				<h2 class="title-caption"><xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of></h2>
				<div class="arrow-banner"><span class="lnr lnr-chevron-down"></span><span class="lnr lnr-chevron-down"></span><span class="lnr lnr-chevron-down"></span></div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>
