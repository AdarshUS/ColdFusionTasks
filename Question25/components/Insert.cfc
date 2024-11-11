<cfcomponent >
  <cffunction name="insertData" access="public" returntype="void">
    <cfargument name="word"  type="string">
    <cfquery  name="insertData" datasource="cf_tutorial">
      INSERT INTO wordInformation values('#arguments.word#')
    </cfquery>
  </cffunction>
</cfcomponent>