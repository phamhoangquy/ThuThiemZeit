<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
	<xsl:template match="/ZoneList">
		<xsl:apply-templates select="Zone/News"></xsl:apply-templates>
		
	</xsl:template>
	<xsl:template match="News">
		<section class="home_s-1" id="menu-1">
			<div class="container">
				<div class="row">
					<div class="col-lg-6">
						<div class="head-title">
							<h1><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of><xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of></h1>
						</div>
						<div class="description"><xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of></div>
					</div>
					<div class="col-lg-6">
						<div class="content">
							<div class="caption">
								<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
							</div>
							<div class="btn-view">
								<a href="javascript:;" data-fancybox="" data-src="#content-modal">
									<xsl:value-of select="/ZoneList/ReadMoreText" disable-output-escaping="yes"></xsl:value-of>
								</a>
							</div>
						</div>
					</div>
				</div>
				<div class="about-img">
					<div class="img">
						<img>
							<xsl:attribute name="src">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
						</img>
					</div>
				</div>
				<div class="modal-about" id="content-modal" style="display: none">
					<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
				</div>
			</div>
		</section>
	</xsl:template>
</xsl:stylesheet>
