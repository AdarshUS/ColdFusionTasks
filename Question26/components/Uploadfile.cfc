<cfcomponent>
  <cffunction name="uploadFile" access="public" returntype="string">
     <cfargument name="file" type="string" >     
     <cffile action="read" file="#file#" variable="result">
     <cfdump var="#result#">
     <cfreturn result>
  </cffunction>

  <cffunction name="insertData" access="public" returntype="void">
    <cfargument name="word"  type="string">
    <cfquery  name="insertData" datasource="cf_tutorial">
      INSERT INTO wordInformation2 values('#arguments.word#')
    </cfquery>
  </cffunction>
</cfcomponent>