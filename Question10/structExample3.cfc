<cfcomponent>
  <cffunction  name="insertIntoStruct" access="public" returnType="string">
    <cfargument  name="key" type="string">
    <cfargument  name="value" type="string">
    <cfset mystruct=structNew("ordered","text","desc",false)>
    <cfset mystruct[#arguments.key#] = #arguments.value#>
    <cfdump  var="##">
  </cffunction>
</cfcomponent>