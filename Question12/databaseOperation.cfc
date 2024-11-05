<cfcomponent>
  <cffunction  name="fetchData" access="public">
    <cfquery datasource="cf_tutorial" name="GetStudents">
      SELECT * from students    
    </cfquery>
    <cfoutput query="GetStudents">
        <cfset GetStudents.firstName = #GetStudents.firstName# & " " &  #GetStudents.LastName# & "<br>">       
        #GetStudents.firstName#
    </cfoutput>
  </cffunction>
</cfcomponent>