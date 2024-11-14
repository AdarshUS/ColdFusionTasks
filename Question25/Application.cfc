<cfcomponent>
  <cfset this.name = "storeWords">
  <cffunction name="onApplicationStart"  returntype="boolean">
    <cfset application.datasource = "cf_tutorial">
    <cfreturn true>
  </cffunction>
</cfcomponent>