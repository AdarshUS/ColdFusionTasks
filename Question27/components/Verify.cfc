<cfcomponent>
  <cffunction name="isDataExists" access="public" returntype="boolean">
    <cfargument name="userName" type="string">
    <cfargument name="password" type="string" >  
    <cfquery datasource="mydatasource" name="checkData">
      SELECT UserName,Password from userInfo where UserName = '#arguments.userName#' AND Password = '#arguments.password#'
    </cfquery>
    <cfif checkData.RecordCount GT 0>
      <cfreturn true>
    </cfif>
    <cfreturn false>
  </cffunction>
</cfcomponent>