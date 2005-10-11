<cfcomponent hint="I am a table's super table." extends="reactor.core.key">

	<cfset variables.SuperTable = 0 />
	<cfset variables.columns = ArrayNew(1) />
	
	<cffunction name="addColumn" access="public" hint="I add a column to this table." output="false" returntype="void">
		<cfargument name="column" hint="I am the column to add" required="yes" type="reactor.core.column" />
		<cfset var columns = getColumns() />
		<cfset columns[ArrayLen(columns) + 1] = arguments.column />
		<cfset setColumns(columns) />
	</cffunction>

	<cffunction name="getColumn" access="public" hint="I return a specific column." output="false" returntype="reactor.core.column">
		<cfargument name="name" hint="I am the name of the column to return" required="yes" type="string" />
		<cfset var columns = getColumns() />
		<cfset var x = 1 />
		
		<cfloop from="1" to="#ArrayLen(columns)#" index="x">
			<cfif columns[x].getName() IS arguments.name>
				<cfreturn columns[x] />
			</cfif>
		</cfloop>
	</cffunction>
	
	<cffunction name="hasSuperTable" hint="I indicate if this superTable has a superTable" output="false" returntype="boolean">
		<cfif IsObject(variables.superTable)>
			<cfreturn true />
		<cfelse>
			<cfreturn false />
		</cfif>
	</cffunction>
	
	<!--- columns --->
    <cffunction name="setColumns" access="public" output="false" returntype="void">
       <cfargument name="columns" hint="I am this table's columns" required="yes" type="array" />
       <cfset variables.columns = arguments.columns />
    </cffunction>
    <cffunction name="getColumns" access="public" output="false" returntype="array">
       <cfreturn variables.columns />
    </cffunction>
	
	<!--- superTable --->
    <cffunction name="setSuperTable" access="public" output="false" returntype="void">
       <cfargument name="superTable" hint="I am this table's super table." required="yes" type="reactor.core.superTable" />
       <cfset variables.superTable = arguments.superTable />
    </cffunction>
    <cffunction name="getSuperTable" access="public" output="false" returntype="reactor.core.superTable">
       <cfreturn variables.superTable />
    </cffunction>

</cfcomponent>