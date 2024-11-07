<cfcomponent >
  <cffunction name="validateImage"  access="public" returntype="boolean">
    <cfargument name="imageFile" required="true">    
    <cfset size = getFileInfo(arguments.imageFile).size>   
    <cfset validextension = local.extension EQ "jpg" OR local.extension EQ "png" OR local.extension EQ "gif">
    <cfdump var="#validextension#" abort>
    <!--- <cfif NOT (() AND size LE 1048576)>
      <cfreturn false>
    </cfif> --->
      <cfreturn true>
  </cffunction>
</cfcomponent>