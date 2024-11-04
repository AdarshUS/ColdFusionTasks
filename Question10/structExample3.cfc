<cfcomponent>  
  <cffunction  name="insertIntoStruct" access="public">
    <cfargument  name="key">
    <cfargument  name="value">
  
    <cfif NOT structKeyExists(session,"mystruct")>
      
      <cfset session.mystruct= structNew()>
    </cfif>
    <cfif NOT structKeyExists(session.mystruct,#arguments.key#)>
      
      <cfset session.mystruct[#arguments.key#] = #arguments.value#>
     
    </cfif>   
    <cfdump  var="#session.mystruct#">
  </cffunction>
</cfcomponent>
