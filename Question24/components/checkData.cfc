<cfcomponent>
  <cffunction name="checkDatafn" access="remote" returntype="any">
    <cfargument name="email" type="string">
    <cfquery name="fetchData" datasource="cf_tutorial">
      SELECT COUNT('mail') AS userCount FROM Information WHERE mail = '#arguments.email#';
    </cfquery>
    <cfif fetchData.userCount>
      <cfreturn true>    
    </cfif>    
  </cffunction>

  <cffunction name="insertData"  access="public">
    <cfargument name="username"  type="string" required="true">
    <cfargument name="email"  type="string" required="true">
   
    <cfquery  name="insertQuery" datasource="cf_tutorial">
      INSERT INTO Information values('#arguments.username#','#arguments.email#')
    </cfquery>
  </cffunction>
</cfcomponent>