<cfcomponent>
  <cffunction name="randomtext" access="public" returntype="string">
    <cfset charset="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz">
    <cfset local.randtext="">
    <cfloop index="i" from="1" to="5">
      <cfset randomnum=randRange(1,len(charset))>
      <cfset local.randtext&=mid(charset,randomnum,1)>      
    </cfloop>
    <cfreturn local.randtext>
  </cffunction>
  <cffunction  name="validatecaptcha" access="public" returntype="boolean">
    <cfargument  name="captcha" type="string">
    <cfargument  name="test" type="string"> 
    <cfif compare(arguments.captcha,arguments.test) eq 1>
      <cfreturn true>
    </cfif>
    <cfreturn false>
  </cffunction>
  <cffunction name="validateEmail" access="public" returntype="boolean">
    <cfargument  name="mail" type="string">
    <cfset local.Email = trim(lCase(ARGUMENTS.mail))>
    <cfset LOCAL.IsValid = reFindNoCase("^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.(?:[A-Z]{2}|com|org|net|edu|gov|mil|biz|info|mobi|name|aero|asia|jobs|museum)$", LOCAL.Email)>
    <cfif local.IsValid gt 0>
      <cfreturn true>
    </cfif>
    <cfreturn false>
  </cffunction>
</cfcomponent>