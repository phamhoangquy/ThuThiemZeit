<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
	<xsl:template match="/ZoneList">
		<xsl:apply-templates select="Zone"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="Zone">
		<section class="home_s-3" id="menu-3">
			<div class="container">
				<div class="head-title">
					<h2><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></h2>
				</div>
				<div class="row">
					<div class="col-lg-7">
						<div class="card-img">
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
					</div>
					<div class="col-lg-5">
						<div class="content-s-3">
							<ul class="list-time">
								<xsl:apply-templates select="News"></xsl:apply-templates>
								
								
							</ul>
						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="News">
		<li>
			<div class="text-time"><xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of><xsl:text disable-output-escaping="yes">'</xsl:text></div>
			<div class="caption"><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of><xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of></div>
		</li>
	</xsl:template>
</xsl:stylesheet>
