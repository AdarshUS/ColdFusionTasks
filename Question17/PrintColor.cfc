<cfcomponent>
  <cffunction  name="isOddEven" access="public">
    <cfargument  name="num" type="numeric">
    <cfset mystruct=structNew()>
     <cfloop index="i" from="1" to="#num#">
      <cfif i %2 eq 0>
        <cfset mystruct[i]="green">
      <cfelse>
        <cfset mystruct[i]="blue">
      </cfif>
     </cfloop>
     <cfreturn mystruct>
  </cffunction>
</cfcomponent>