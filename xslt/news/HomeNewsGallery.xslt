<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
	<xsl:template match="/ZoneList">
		<section class="home_s-4" id="menu-4">
			<div class="head-title">
				<h2><xsl:value-of select="Zone/Title" disable-output-escaping="yes"></xsl:value-of><xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of></h2>
			</div>
			<div class="wrap-slide-s4">
				<div class="s4-left"></div>
				<div class="s4-right">
					<div class="swiper-container" id="ka-swiper1">
						<div class="swiper-wrapper">
							
							<xsl:apply-templates select="Zone/News"></xsl:apply-templates>
							
						</div>
						<div class="wrap-button">
							<div class="button-next"><img src="/Data/Sites/1/media/next_arrow.png" alt=""/></div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="News">
		<div class="swiper-slide">
			<div class="wrapper">
				<a data-fancybox="gallery">
					<xsl:attribute name="data-fancybox">
						<xsl:text disable-output-escaping="yes">gallery-</xsl:text>
						<xsl:value-of select="NewsId" disable-output-escaping="yes"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="href">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<img>
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
					</img>
				</a>
				<div class="images-add">
					<a>
						<span class="ri-add-line"></span>
					</a>
				</div>
				<div class="hidden">
					<xsl:apply-templates select="NewsImages"></xsl:apply-templates>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="NewsImages">
		<xsl:if test="position()&gt;1">
			<a>
				<xsl:attribute name="data-fancybox">
					<xsl:text disable-output-escaping="yes">gallery-</xsl:text>
					<xsl:value-of select="../NewsId" disable-output-escaping="yes"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="href">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<img>
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
				</img>
			</a>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>
