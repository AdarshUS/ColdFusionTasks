<cfcomponent >
  <cffunction name="insertRecord" access="public" returntype="boolean">
    <cfargument name="userName" type="string" required="true">
    <cfargument name="password"  type="string" required="true">
    <cfargument name="role" type="string" required="true" >
    <cfset local.success =true>
    <cftry>
      <cfquery datasource="cf_tutorial" name="insertData">
        INSERT INTO UserTable(username,password,role) VALUES('#arguments.userName#','#arguments.password#','#arguments.role#')  
      </cfquery>
      <cfcatch type="any">
        <cfset local.success = false>
      </cfcatch>   
    </cftry>
    <cfreturn local.success>    
  </cffunction>
</cfcomponent>