<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="text" indent="no"  />

	<xsl:template match="/">
&lt;cfcomponent hint="I am the base Metadata object for the <xsl:value-of select="object/@name"/><xsl:text> </xsl:text><xsl:value-of select="object/@type"/>.  I am generated.  DO NOT EDIT ME."
	extends="reactor.base.abstractMetadata" &gt;
	
	&lt;cfset variables.signature = "<xsl:value-of select="object/@signature" />" &gt;
	
	&lt;cfset variables.metadata.name = "<xsl:value-of select="object/@name" />" /&gt;
	&lt;cfset variables.metadata.owner = "<xsl:value-of select="object/@owner" />" /&gt;
	&lt;cfset variables.metadata.type = "<xsl:value-of select="object/@type" />" /&gt;
	&lt;cfset variables.metadata.database = "<xsl:value-of select="object/@database" />" /&gt;
	&lt;cfset variables.metadata.dbms = "<xsl:value-of select="object/@dbms" />" /&gt;
	
	&lt;!--- Super Object ---&gt;
	&lt;cfset variables.metadata.super = structNew() /&gt;
	<xsl:for-each select="object/super">
		&lt;cfset variables.metadata.super.name = "<xsl:value-of select="@name" />" /&gt;
		&lt;cfset variables.metadata.super.alias = "<xsl:value-of select="@alias" />" /&gt;
		&lt;cfset variables.metadata.super.relate = ArrayNew(1) /&gt;
		
		<xsl:for-each select="relate">
			&lt;cfset variables.metadata.super.relate[<xsl:value-of select="position()" />] = StructNew() /&gt;
			&lt;cfset variables.metadata.super.relate[<xsl:value-of select="position()" />].from = "<xsl:value-of select="@from" />" /&gt;
			&lt;cfset variables.metadata.super.relate[<xsl:value-of select="position()" />].to = "<xsl:value-of select="@to" />" /&gt;
		</xsl:for-each>
	</xsl:for-each>
	
	&lt;!--- Has One ---&gt;
	&lt;cfset variables.metadata.hasOne = ArrayNew(1) /&gt;
	<xsl:for-each select="object/hasOne">
		<xsl:variable name="hasOneIndex" select="position()" />
		&lt;cfset variables.metadata.hasOne[<xsl:value-of select="$hasOneIndex" />] = StructNew() /&gt;
		&lt;cfset variables.metadata.hasOne[<xsl:value-of select="$hasOneIndex" />].name = "<xsl:value-of select="@name" />" /&gt;
		&lt;cfset variables.metadata.hasOne[<xsl:value-of select="$hasOneIndex" />].alias = "<xsl:value-of select="@alias" />" /&gt;
		&lt;cfset variables.metadata.hasOne[<xsl:value-of select="$hasOneIndex" />].relate = ArrayNew(1) /&gt;
		
		<xsl:for-each select="relate">
			&lt;cfset variables.metadata.hasOne[<xsl:value-of select="$hasOneIndex" />].relate[<xsl:value-of select="position()" />] = StructNew() /&gt;
			&lt;cfset variables.metadata.hasOne[<xsl:value-of select="$hasOneIndex" />].relate[<xsl:value-of select="position()" />].from = "<xsl:value-of select="@from" />" /&gt;
			&lt;cfset variables.metadata.hasOne[<xsl:value-of select="$hasOneIndex" />].relate[<xsl:value-of select="position()" />].to = "<xsl:value-of select="@to" />" /&gt;
		</xsl:for-each>
	</xsl:for-each>
	
	&lt;!--- Has Many ---&gt;
	&lt;cfset variables.metadata.hasMany = ArrayNew(1) /&gt;
	<xsl:for-each select="object/hasMany">
		<xsl:variable name="hasOneIndex" select="position()" />
		&lt;cfset variables.metadata.hasMany[<xsl:value-of select="$hasOneIndex" />] = StructNew() /&gt;
		&lt;cfset variables.metadata.hasMany[<xsl:value-of select="$hasOneIndex" />].name = "<xsl:value-of select="@name" />" /&gt;
		&lt;cfset variables.metadata.hasMany[<xsl:value-of select="$hasOneIndex" />].alias = "<xsl:value-of select="@alias" />" /&gt;
		
		<xsl:choose>
			<xsl:when test="count(relate) &gt; 0">
				&lt;cfset variables.metadata.hasMany[<xsl:value-of select="$hasOneIndex" />].relate = ArrayNew(1) /&gt;
			
				<xsl:for-each select="relate">
					&lt;cfset variables.metadata.hasMany[<xsl:value-of select="$hasOneIndex" />].relate[<xsl:value-of select="position()" />] = StructNew() /&gt;
					&lt;cfset variables.metadata.hasMany[<xsl:value-of select="$hasOneIndex" />].relate[<xsl:value-of select="position()" />].from = "<xsl:value-of select="@from" />" /&gt;
					&lt;cfset variables.metadata.hasMany[<xsl:value-of select="$hasOneIndex" />].relate[<xsl:value-of select="position()" />].to = "<xsl:value-of select="@to" />" /&gt;
				</xsl:for-each>
			</xsl:when>
			<xsl:when test="count(link) &gt; 0">
				&lt;cfset variables.metadata.hasMany[<xsl:value-of select="$hasOneIndex" />].link = "<xsl:value-of select="link/@name" />" /&gt;
			</xsl:when>
		</xsl:choose>		
	</xsl:for-each>
	
	&lt;!--- Fields ---&gt;
	&lt;cfset variables.metadata.fields = ArrayNew(1) /&gt;
	<xsl:for-each select="object/fields/field">
		&lt;cfset variables.metadata.fields[<xsl:value-of select="position()" />] = StructNew() /&gt;
		&lt;cfset variables.metadata.fields[<xsl:value-of select="position()" />]["name"] = "<xsl:value-of select="@name" />" /&gt;
		&lt;cfset variables.metadata.fields[<xsl:value-of select="position()" />]["primaryKey"] = "<xsl:value-of select="@primaryKey" />" /&gt;
		&lt;cfset variables.metadata.fields[<xsl:value-of select="position()" />]["identity"] = "<xsl:value-of select="@identity" />" /&gt;
		&lt;cfset variables.metadata.fields[<xsl:value-of select="position()" />]["nullable"] = "<xsl:value-of select="@nullable" />" /&gt;
		&lt;cfset variables.metadata.fields[<xsl:value-of select="position()" />]["dbDataType"] = "<xsl:value-of select="@dbDataType" />" /&gt;
		&lt;cfset variables.metadata.fields[<xsl:value-of select="position()" />]["cfDataType"] = "<xsl:value-of select="@cfDataType" />" /&gt;
		&lt;cfset variables.metadata.fields[<xsl:value-of select="position()" />]["cfSqlType"] = "<xsl:value-of select="@cfSqlType" />" /&gt;
		&lt;cfset variables.metadata.fields[<xsl:value-of select="position()" />]["length"] = "<xsl:value-of select="@length" />" /&gt;
		&lt;cfset variables.metadata.fields[<xsl:value-of select="position()" />]["default"] = "<xsl:value-of select="@default" />" /&gt;
		&lt;!--- cfset variables.metadata.fields[<xsl:value-of select="position()" />]["overridden"] = "<xsl:value-of select="@overridden" />" /---&gt;
		&lt;cfset variables.metadata.fields[<xsl:value-of select="position()" />]["object"] = "<xsl:value-of select="../../@name" />" /&gt;
	</xsl:for-each>
	
	&lt;cffunction name="dumpVariables"&gt;
		&lt;cfdump var="#variables#" &gt; &lt;cfabort &gt;
	&lt;/cffunction&gt;
		
&lt;/cfcomponent&gt;
	</xsl:template>
</xsl:stylesheet>