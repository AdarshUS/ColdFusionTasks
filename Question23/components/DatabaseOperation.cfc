<cfcomponent >
  <cffunction name="insertData"  access="public" returntype="boolean">
    <cfargument name="position" type="string" required="true" >
    <cfargument name="canRelocate" type="string" required="true">
    <cfargument name="startDate" type="string" required="true">
    <cfargument name="website" type="string" required="false">
    <cfargument name="resume"  type="string" required="false">
    <cfargument name="dollar"  type="string" required="false">
    <cfargument name="cent"  type="string" required="false">
    <cfargument name="firstName"  type="string" required="true">
    <cfargument name="lastName"  type="string" required="true">
    <cfargument name="email"  type="string" required="true">
    <cfargument name="ph1"  type="string" required="true">
    <cfargument name="ph2"  type="string" required="true">
    <cfargument name="ph3"  type="string" required="true">

    <cfset local.salary = arguments.dollar & "."&arguments.cent>
    <cfset local.phone = arguments.ph1 & arguments.ph2 & arguments.ph3>
    <cftry>
      <cfquery name="AddApplication" datasource="#application.datasource#">
        INSERT INTO applications VALUES(
          <cfqueryparam value="#arguments.firstName#" cfsqltype="cf_sql_varchar">,
          <cfqueryparam value="#arguments.lastName#" cfsqltype="cf_sql_varchar">,
          <cfqueryparam value="#arguments.email#" cfsqltype="cf_sql_varchar">,
          <cfqueryparam value="#local.phone#" cfsqltype="cf_sql_varchar">,
          <cfqueryparam value="#arguments.position#" cfsqltype="cf_sql_varchar">,
          <cfqueryparam value="#arguments.canRelocate#" cfsqltype="cf_sql_varchar">,
          <cfqueryparam value="#arguments.startDate#" cfsqltype="cf_sql_varchar">,
          <cfqueryparam value="#arguments.website#" cfsqltype="cf_sql_varchar">,
          <cfqueryparam value="#arguments.resume#" cfsqltype="cf_sql_varchar">,
          <cfqueryparam value="#local.salary#" cfsqltype="cf_sql_varchar">
          )     
      </cfquery>
    <cfcatch  type="any">
      <cfreturn false>
    </cfcatch>  
    </cftry> 
    <cfreturn true> 
  </cffunction>
</cfcomponent>