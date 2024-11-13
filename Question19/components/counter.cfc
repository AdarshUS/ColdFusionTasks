<cfcomponent>
  <cfset cookie.value = 1>
  <cffunction  name="increaseCount" access="public" returntype="numeric">    
    <cfif NOT structKeyExists(cookie,"VisitsCounter")>
      <cfcookie  name="VisitsCounter" value=#cookie.value#>
    </cfif>     
      <cfset cookie.VisitsCounter=cookie.VisitsCounter+1>
    <cfreturn cookie.VisitsCounter>
  </cffunction> 
</cfcomponent>