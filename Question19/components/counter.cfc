<cfcomponent>
  <cfset cookie.count=0>
  <cffunction  name="increaseCount" access="public">    
    <cfif NOT structKeyExists(cookie,"VisitsCounter")>
      <cfcookie  name="VisitsCounter" value=1>
    <cfelse>
      <cfoutput>
        #cookie.VisitsCounter#
        <cfset cookie.VisitsCounter=cookie.VisitsCounter+1>
      </cfoutput>
    </cfif>
  </cffunction> 
</cfcomponent>