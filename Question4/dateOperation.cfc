<cfcomponent>
  <cffunction  name="getTimeinfo" returnType="date">   
    <cfset todayDate= dateFormat(now(),"dd-mm-yyy")>
    <cfoutput>Today's Date is #todayDate#<br></cfoutput>
    <cfset current_monthNum=dateFormat(now(),"mm")>
    <cfset current_monthWord=dateFormat(now(),"mmmm")>
    <cfoutput>current month is #current_monthNum#(#current_monthWord#)</cfoutput>
    <cfset dayofweek=dayOfWeek(now())>
    <cfset fridayDate=now()-dayofweek>
    <cfoutput>#fridayDate#</cfoutput>
  </cffunction>
</cfcomponent>