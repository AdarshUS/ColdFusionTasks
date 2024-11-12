<cfcomponent >
 <cffunction name="verifyData" access="public" returntype="query">
    <cfargument name="userName" required="true" type="string" >
    <cfargument name="Password" required="true" type="string" >
    <cfquery  name="verifyData" datasource="cf_tutorial">
      SELECT username,password,role from UserTable where username = <cfqueryparam  value="#arguments.userName#" cfsqltype="cf_sql_varchar"> AND password = <cfqueryparam value="#arguments.Password#">     
    </cfquery>  
    <cfreturn verifyData>    
  </cffunction> 
</cfcomponent>