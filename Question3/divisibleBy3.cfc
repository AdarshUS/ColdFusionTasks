<cfcomponent>
  <cffunction  name="isDivisibleBy3" returnType="any">
  <cfargument  name="items" type="any">
    <cfset items=#arguments.items#>
    <cfset result="">
    <cfloop list="#items#" item="num">
      <cfif num%3 EQ 0>
       <cfset result=listAppend(result,num)>
      </cfif>
    </cfloop>
    <cfreturn result>    
  </cffunction>
</cfcomponent>