<cfcomponent>
    <cffunction  name="getRate" returnType="any">
    <cfargument  name="number" type="Numeric">
      <cfif arguments.number EQ 5>
        <cfset local.result="Very Good">
        <cfelseif arguments.number EQ 4>
         <cfset local.result="Good">
         <cfelseif arguments.number EQ 3>
         <cfset local.result="Fair">
         <cfelseif arguments.number EQ 2 OR arguments.number EQ 1>
         <cfset local.result="OK">
      </cfif>
      <cfreturn local.result>
    </cffunction>
</cfcomponent>