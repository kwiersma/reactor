
<cfcomponent hint="I am the base Metadata object for the EmailAddress table.  I am generated.  DO NOT EDIT ME."
	extends="reactor.base.abstractMetadata" >
	
	<cfset variables.signature = "1A9130F428562C287E99358B18E59149" >
	
	<cfset variables.metadata.name = "EmailAddress" />
	<cfset variables.metadata.owner = "" />
	<cfset variables.metadata.type = "table" />
	<cfset variables.metadata.database = "contactmanager" />
	<cfset variables.metadata.dbms = "mysql" />
	
	<!--- Super Object --->
	<cfset variables.metadata.super = structNew() />
	
	
	<!--- Has One --->
	<cfset variables.metadata.hasOne = ArrayNew(1) />
	
	
	<!--- Has Many --->
	<cfset variables.metadata.hasMany = ArrayNew(1) />
	
	
	<!--- Fields --->
	<cfset variables.metadata.fields = ArrayNew(1) />
	
		<cfset variables.metadata.fields[1] = StructNew() />
		<cfset variables.metadata.fields[1]["name"] = "EmailAddressId" />
		<cfset variables.metadata.fields[1]["primaryKey"] = "true" />
		<cfset variables.metadata.fields[1]["identity"] = "true" />
		<cfset variables.metadata.fields[1]["nullable"] = "false" />
		<cfset variables.metadata.fields[1]["dbDataType"] = "int" />
		<cfset variables.metadata.fields[1]["cfDataType"] = "numeric" />
		<cfset variables.metadata.fields[1]["cfSqlType"] = "cf_sql_integer" />
		<cfset variables.metadata.fields[1]["length"] = "0" />
		<cfset variables.metadata.fields[1]["default"] = "0" />
		<!--- cfset variables.metadata.fields[1]["overridden"] = "false" /--->
		<cfset variables.metadata.fields[1]["object"] = "EmailAddress" />
	
		<cfset variables.metadata.fields[2] = StructNew() />
		<cfset variables.metadata.fields[2]["name"] = "ContactId" />
		<cfset variables.metadata.fields[2]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[2]["identity"] = "false" />
		<cfset variables.metadata.fields[2]["nullable"] = "false" />
		<cfset variables.metadata.fields[2]["dbDataType"] = "int" />
		<cfset variables.metadata.fields[2]["cfDataType"] = "numeric" />
		<cfset variables.metadata.fields[2]["cfSqlType"] = "cf_sql_integer" />
		<cfset variables.metadata.fields[2]["length"] = "0" />
		<cfset variables.metadata.fields[2]["default"] = "0" />
		<!--- cfset variables.metadata.fields[2]["overridden"] = "false" /--->
		<cfset variables.metadata.fields[2]["object"] = "EmailAddress" />
	
		<cfset variables.metadata.fields[3] = StructNew() />
		<cfset variables.metadata.fields[3]["name"] = "EmailAddress" />
		<cfset variables.metadata.fields[3]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[3]["identity"] = "false" />
		<cfset variables.metadata.fields[3]["nullable"] = "false" />
		<cfset variables.metadata.fields[3]["dbDataType"] = "varchar" />
		<cfset variables.metadata.fields[3]["cfDataType"] = "string" />
		<cfset variables.metadata.fields[3]["cfSqlType"] = "cf_sql_varchar" />
		<cfset variables.metadata.fields[3]["length"] = "100" />
		<cfset variables.metadata.fields[3]["default"] = "" />
		<!--- cfset variables.metadata.fields[3]["overridden"] = "false" /--->
		<cfset variables.metadata.fields[3]["object"] = "EmailAddress" />
	
	
	<cffunction name="dumpVariables">
		<cfdump var="#variables#" > <cfabort >
	</cffunction>
		
</cfcomponent>
	
