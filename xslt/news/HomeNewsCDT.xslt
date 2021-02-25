<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
	<xsl:template match="/ZoneList">
		<xsl:apply-templates select="Zone/News"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="News">
		<section class="home_s-2" id="menu-2">
			<div class="container-fuild">
				<div class="row">
					<div class="col-lg-6">
						<div class="card-img">
							<div class="img">
								<xsl:apply-templates select="NewsImages[2]"></xsl:apply-templates>
								
							</div>
						</div>
					</div>
					<div class="col-lg-6">
						<div class="content-s-2">
							<div class="head-title">
								<h2><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of><xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of></h2>
							</div>
							<div class="vector-s-2">
								<div class="vector-logo">
									<a>
										<img>
											<xsl:attribute name="src">
												<xsl:value-of select="ImageUrl"></xsl:value-of>
											</xsl:attribute>
											<xsl:attribute name="alt">
												<xsl:value-of select="Title"></xsl:value-of>
											</xsl:attribute>
										</img>
									</a>
								</div>
								<div class="text-vector"><xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of></div>
							</div>
							<div class="desc">
								<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="container">
				<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="NewsImages">
		<img>
			<xsl:attribute name="src">
				<xsl:value-of select="ImageUrl"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="alt">
				<xsl:value-of select="Title"></xsl:value-of>
			</xsl:attribute>
		</img>
	</xsl:template>
</xsl:stylesheet>
