<cfcomponent>
	<cfset variables.ObjectFactory = 0 />
	
	<cffunction name="init" access="public" hint="I configure this object factory" returntype="reactorFactory">
		<cfargument name="pathToConfigXml" hint="I am the path to the config XML file." required="yes" type="string" />
		
		<cfargument name="project" hint="I am the configured project name." required="no" type="string" default="" />
		<cfargument name="dsn" hint="I am the DSN to connect to." required="no" type="string" default="" />
		<cfargument name="type" hint="I am the type of database the dsn is for" required="no" type="string" default="" />
		<cfargument name="mapping" hint="I am a mapping to the location where objects are created." required="no" type="string" default="" />
		<cfargument name="mode" hint="I am the mode in which the system is running.  Options are: development, production" required="no" type="string" default="" />
		<cfargument name="username" hint="I am the username to use for DSNs" required="no" type="string" default="" />
		<cfargument name="password" hint="I am the password to use for DSNs" required="no" type="string" default="" />
		
		<cfset var config = CreateObject("Component", "reactor.config.config").init(arguments.pathToConfigXml) />
		
		<cfif Len(arguments.project)>
			<cfset config.setProject(arguments.project) />
		</cfif>
		<cfif Len(arguments.dsn)>
			<cfset config.setDsn(arguments.dsn) />
		</cfif>
		<cfif Len(arguments.type)>
			<cfset config.setType(arguments.type) />
		</cfif>
		<cfif Len(arguments.mapping)>
			<cfset config.setMapping(arguments.mapping) />
		</cfif>
		<cfif Len(arguments.mode)>
			<cfset config.setMode(arguments.mode) />
		</cfif>
		<cfif Len(arguments.username)>
			<cfset config.setUsername(arguments.username) />
		</cfif>
		<cfif Len(arguments.password)>
			<cfset config.setPassword(arguments.password) />
		</cfif>
		
		<cfset setObjectFactory(CreateObject("Component", "reactor.core.objectFactory").init(config, this)) />
		
		<cfreturn this />
	</cffunction>
	
	<cffunction name="createRecord" access="public" hint="I return a record object." output="false" returntype="reactor.base.abstractRecord">
		<cfargument name="objectName" hint="I am the name of the record to return.  I corrispond to the name of a object in the DB." required="yes" type="string" />
		<cfreturn getObjectFactory().create(arguments.objectName, "Record") />
	</cffunction>
	
	<cffunction name="createDao" access="public" hint="I return a Dao object." output="false" returntype="reactor.base.abstractDao">
		<cfargument name="objectName" hint="I am the name of the Dao to return.  I corrispond to the name of a object in the DB." required="yes" type="string" />
		<cfreturn getObjectFactory().create(arguments.objectName, "Dao") />
	</cffunction>
	
	<cffunction name="createTo" access="public" hint="I return a To object." output="false" returntype="reactor.base.abstractTo">
		<cfargument name="objectName" hint="I am the name of the TO to return.  I corrispond to the name of a object in the DB." required="yes" type="string" />
		<cfreturn getObjectFactory().create(arguments.objectName, "To") />
	</cffunction>
	
	<cffunction name="createGateway" access="public" hint="I return a gateway object." output="false" returntype="reactor.base.abstractGateway">
		<cfargument name="objectName" hint="I am the name of the record to return.  I corrispond to the name of a object in the DB." required="yes" type="string" />
		<cfreturn getObjectFactory().create(arguments.objectName, "Gateway") />
	</cffunction>

	<cffunction name="createMetadata" access="public" hint="I return a metadata object." output="false" returntype="reactor.base.abstractMetadata">
		<cfargument name="objectName" hint="I am the name of the metadata to return.  I corrispond to the name of a object in the DB." required="yes" type="string" />
		<cfreturn getObjectFactory().create(arguments.objectName, "Metadata") />
	</cffunction>

	<cffunction name="createIterator" access="public" hint="I return an iterator object." output="false" returntype="reactor.iterator.iterator">
		<cfargument name="objectName" hint="I am the name of the object the iterator is being created for.  I corrispond to the name of a object in the DB." required="yes" type="string" />
		<cfreturn createobject("Component", "reactor.iterator.iterator").init(this, arguments.objectName) />
	</cffunction>
	
	<!--- ObjectFactory --->
    <cffunction name="setObjectFactory" access="private" output="false" returntype="void">
       <cfargument name="ObjectFactory" hint="I am the table factory used to get table metadata" required="yes" type="reactor.core.objectFactory" />
       <cfset variables.ObjectFactory = arguments.ObjectFactory />
    </cffunction>
    <cffunction name="getObjectFactory" access="private" output="false" returntype="reactor.core.objectFactory">
       <cfreturn variables.ObjectFactory />
    </cffunction>

</cfcomponent>