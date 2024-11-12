<cfcomponent>
  <cffunction name="findRole" access="public" returnType="string">
    <cfargument name="userName" type="string" required="true">    
    <cfquery name="getRole" datasource="cf_tutorial">
      SELECT role FROM UserTable WHERE username = <cfqueryparam value="#arguments.userName#" cfsqltype="cf_sql_varchar">
    </cfquery>    
    <cfreturn getRole.role>
  </cffunction>
</cfcomponent>