<cfcomponent>
  <cffunction  name="searchWord" access="public" returnType="string">
  <cfargument  name="word" type="string">
  <cfset sentence="the quick brown fox jumps over the lazy dog">
  <cfset count=0>
  <cfset arr=sentence.split(" ")>
  <cfloop array="#arr#" index="item">
    <cfif word eq item>
      <cfset count=count+1>
    </cfif>
  </cfloop>
  <cfreturn count>
  </cffunction>
</cfcomponent>