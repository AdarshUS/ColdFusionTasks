<cfcomponent>
  <cffunction name="printPattern" access="public" returntype="array">
    <cfset local.rows = 3>
    <cfset local.cols = 3>
    <cfset local.start = 1>
    <cfset local.twoDimArray = arrayNew(2)>   
    <cfloop index="i" from="#local.start#" to="#local.rows#">
      <cfset local.twoDimArray[i] = arrayNew(1)>
    </cfloop>   
    <cfloop index="i" from="#local.start#" to="#local.rows#">
      <cfset x = #i#>
      <cfloop index="j" from="#local.start#" to="#local.cols#">
        <cfif j EQ 1>
          <cfset x = #i#>
        </cfif>
        <cfset local.twoDimArray[i][j] = x>
        <cfset x = x + 3>
      </cfloop>
    </cfloop>
    <cfreturn local.twoDimArray>
  </cffunction>
</cfcomponent>
