<cfcomponent>
  <cffunction name="convertJson"  access="public" returntype="any">     
    <cfset local.jsonstring = '[{"Name":"saravanan","Age":27,"LOCATION":"dubai"},{"Name":"Ram","Age":26,"LOCATION":"Kovilpatti"}]'>
    <cfset local.data = deserializeJSON(local.jsonstring)>
    <cfreturn local.data>
  </cffunction>
</cfcomponent>