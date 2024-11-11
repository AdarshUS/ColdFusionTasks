<cfcomponent>
  <cffunction name="checkData" access="remote" returntype="query">
    <cfargument name="mail" type="string">
    <cfquery name="fetchData" datasource="mydatasource">
      SELECT userName,mail from Information where mail = arguments.mail
    </cfquery>
  </cffunction>
</cfcomponent>