<cfcomponent>
  <cffunction  name="calculateAge" access="public" returnType="string">
   <cfargument  name="dobuser" type="any">
   <cfargument  name="dobmom" type="any">
   <cfset dateobjuser=parseDateTime(#arguments.dobuser#,"dd-mm-yyyy")>
   <cfset dateobjmom=parseDateTime(#arguments.dobmom#,"dd-mm-yyyy")>
   <cfset year1=year(arguments.dobuser)>
   <cfset year2=year(arguments.dobmom)>
   <cfset myage=year(now())-year1>
   <cfset momAge=year(now())-year2>
   <cfset momdeliveryAge=momAge-myage>
   <cfset daysRemainingMe=dateDiff("d", now(),dateobjuser)>
   <cfset daysRemainingMom=dateDiff("d", now(),dateobjmom)>
   <cfreturn "Your Age : #myage# <br> Your Mother's age: #momAge# <br> Your Mother's Delivery Age: #momdeliveryAge# <br> Days remaining for Your Birthday #daysRemainingMe# <br> Days Remaining for Your Mom's Birthday:#daysRemainingMom#">
  </cffunction>
</cfcomponent>