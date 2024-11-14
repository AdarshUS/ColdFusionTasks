<cfcomponent >
  <cffunction name="insertRecord" access="public" returntype="boolean">
    <cfargument name="userName" type="string" required="true">
    <cfargument name="password"  type="string" required="true">
    <cfargument name="role" type="string" required="true" >
    <cfset local.success =true>
    <cfset local.password = hash("#arguments.password#" , "SHA-256" , "UTF-8")>
    <cftry> 
      <cfquery datasource="#application.datasource#" name="insertData">
        INSERT INTO UserTable(username,password,role) VALUES(
          <cfqueryparam value = '#arguments.userName#' cfsqltype="cf_sql_varchar">,
          <cfqueryparam value = '#local.password#' cfsqltype="cf_sql_varchar">,
          <cfqueryparam value = '#arguments.role#' cfsqltype="cf_sql_varchar">)  
      </cfquery>
     <cfcatch type="any">
     <cfset local.success = false>
      </cfcatch>   
    </cftry>
    <cfreturn local.success>    
  </cffunction>
</cfcomponent>