<cfcomponent>
  <cffunction  name="fetchData" access="public" returntype="query">   
    <cfquery datasource="cf_tutorial" name="GetStudents">
      SELECT * from students    
    </cfquery>    
   <!---  <cfoutput query="GetStudents">
        <cfset GetStudents.Name = #GetStudents.firstName# & " " &  #GetStudents.LastName# & "<br>">       
        #GetStudents.Name#
    </cfoutput> --->
    <cfreturn GetStudents>
  </cffunction>
</cfcomponent>