<cfcomponent>
  <cffunction  name="getTimeinfo" returnType="string">   
    <cfset local.todayDate= dateFormat(now(),"dd-mm-yyy")>    
    <cfset local.current_monthNum=dateFormat(now(),"mm")>
    <cfset local.current_monthWord=dateFormat(now(),"mmmm")>    
    <cfset local.dayofweek=DayOfWeek(now())>
    <cfset local.daysSinceFriday = (#dayofweek# +1) % 7>
    <cfset local.lastFridayDateObj = dateAdd("d", -daysSinceFriday, now())>
    <cfset local.lastFridayDate = dateFormat(local.lastFridayDateObj,"dd-mm-yyy")>
    <cfset local.DaysinMonth=DaysInMonth(now())>
    <cfset local.lastDayDateobj = now().setDay(local.DaysinMonth)>
    <cfset local.lastDayDate = dateFormat(local.lastDayDateobj,"dd-mm-yyy")>   
    <cfreturn "Today's Date is #todayDate# <br> current month in numeric:#current_monthNum# <br> current month in word:#current_monthWord# <br> Last friday date:#lastFridayDate# <br> Last Day in Month:#local.lastDayDate#">
  </cffunction>

  <cffunction  name="DisplayLastFiveDates" access="public" returnType="struct">
    <cfset mystruct=structNew("ordered")>
    <cfloop index="i" from="-1" to="-5" step=-1>      
      <cfset dateItem = now()+i>
      <cfif datePart("w",dateItem) EQ 1>
        <cfset mystruct[dateFormat(dateItem,"dd-mm-yyy")] = "red">
      <cfelseif datePart("w",dateItem) EQ 2>
        <cfset mystruct[dateFormat(dateItem,"dd-mm-yyy")] = "green">
      <cfelseif datePart("w",dateItem) EQ 3>
        <cfset mystruct[dateFormat(dateItem,"dd-mm-yyy")] = "orange">
      <cfelseif datePart("w",dateItem) EQ 4>
        <cfset mystruct[dateFormat(dateItem,"dd-mm-yyy")] = "yellow">
      <cfelseif datePart("w",dateItem) EQ 5>
        <cfset mystruct[dateFormat(dateItem,"dd-mm-yyy")] = "black">
      <cfelseif datePart("w",dateItem) EQ 6>
        <cfset mystruct[dateFormat(dateItem,"dd-mm-yyy")] = "red">
      </cfif>      
    </cfloop>
    <cfreturn mystruct>
  </cffunction>
</cfcomponent>