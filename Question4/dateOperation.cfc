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

  <cffunction  name="DisplayLastFiveDates" access="public" returnType="void">
    <cfset local.fromDate = now()>
    <cfset local.toDate = now()-5>

    <cfloop index="i" from="-1" to="-5" step=-1>
      <cfset dateItem = dateFormat(now()+i,"dd-mm-yyy")>          
      <cfoutput>
        #dateItem#
      </cfoutput>
    </cfloop>
  </cffunction>
</cfcomponent>