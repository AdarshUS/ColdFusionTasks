<cfcomponent>
  <cffunction  name="printpat" access="public">
    <cfloop index="i" from="1" to="3">
      <cfset x=#i#>
      <cfloop index="j" from="1" to="3">
        <cfif j eq 1>
          <cfoutput>#i#</cfoutput>
          <cfset x=#i#>
        <cfelse>
          <cfoutput>#x#</cfoutput>
        </cfif>
        <cfset x=x+3>
      </cfloop>
        <cfoutput><br></cfoutput>
    </cfloop>
  </cffunction>
</cfcomponent>