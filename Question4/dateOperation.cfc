<cfcomponent>
  <cffunction  name="getTimeinfo" returnType="string">   
    <cfset todayDate= dateFormat(now(),"dd-mm-yyy")>    
    <cfset current_monthNum=dateFormat(now(),"mm")>
    <cfset current_monthWord=dateFormat(now(),"mmmm")>
    
    <cfset dayofweek=DayOfWeek(now())>
    <cfset daysSinceFriday = (#dayofweek# +1) % 7>
    <cfset lastFridayDate = dateAdd("d", -daysSinceFriday, now())>
    <cfreturn "Today's Date is #todayDate# <br> current month in numeric:#current_monthNum# <br> current month in word:#current_monthWord# <br> Last friday date:#lastFridayDate#">
  </cffunction>
</cfcomponent>