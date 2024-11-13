<cfcomponent >
  <cffunction name="multiply" access="public">
    <cfargument name="num1"  required="false" type="numeric">
    <cfargument name="num2"  required="false" type="numeric">
    <cfargument name="num3"  required="false" type="numeric">
    <cfargument name="num4"  required="false" type="numeric">
    <cfif structKeyExists(arguments,"num1") AND structKeyExists(arguments,"num2") AND NOT structKeyExists(arguments,"num3") AND NOT structKeyExists(arguments,"num4")>
      <cfset ans=arguments.num1*arguments.num2>
    <cfelseif structKeyExists(arguments,"num1") AND structKeyExists(arguments,"num2") AND structKeyExists(arguments,"num3") AND NOT structKeyExists(arguments,"num4")>
      <cfset ans=arguments.num1*arguments.num2*arguments.num3>
    <cfelseif structKeyExists(arguments,"num1") AND structKeyExists(arguments,"num2") AND structKeyExists(arguments,"num3") AND  structKeyExists(arguments,"num4")>
      <cfset ans=arguments.num1*arguments.num2*arguments.num3*arguments.num4>
    </cfif>
    <cfreturn ans>
  </cffunction>
</cfcomponent>
