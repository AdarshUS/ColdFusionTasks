<cfcomponent>
  <cffunction  name="getRate" returnType="string">
  <cfargument  name="rateValue" type="Numeric" required="true">
   <cfset rate = arguments.rateValue>
   <cfswitch expression=#rate#>
      <cfcase value="5">Very Good</cfcase>
      <cfcase value="4">Good</cfcase>
      <cfcase value="3">Fair</cfcase>
      <cfcase value="2">Ok</cfcase>
      <cfcase value="1">Ok</cfcase>
   </cfswitch>
  </cffunction>
</cfcomponent>