<cfcomponent>
  <cffunction name="isDataExists" access="public" returntype="boolean">
    <cfargument name="userName" type="string">
    <cfargument name="password" type="string">
    <cfquery datasource="cf_tutorial" name="checkData"></cfquery>   
  </cffunction>
</cfcomponent>