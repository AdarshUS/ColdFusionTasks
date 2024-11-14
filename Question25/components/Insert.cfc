<cfcomponent >
  <cffunction name="insertData" access="public" returntype="void">
    <cfargument name="word"  type="string">
    <cfquery  name="insertData" datasource="#application.datasource#">
      INSERT INTO wordInformation values(
        <cfqueryparam value="#arguments.word#" cfsqltype="cf_sql_varchar"> 
        )
    </cfquery>
  </cffunction>
</cfcomponent>