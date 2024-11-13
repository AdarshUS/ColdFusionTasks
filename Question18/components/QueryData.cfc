<cfcomponent >
  <cffunction name="createQuery"  access="public" returntype="query">
      <cfset myquery = queryNew("id,name,email","integer,varchar,varchar")>
      <cfset queryAddRow(myquery)>
      <cfset querySetCell(myquery, "id", "1")>
      <cfset querySetCell(myquery, "name", "Adarsh")>
      <cfset querySetCell(myquery, "email", "adarshus1999@gmail.com")>

      <cfset queryAddRow(myquery)>
      <cfset querySetCell(myquery, "id", "2")>
      <cfset querySetCell(myquery, "name", "Ashish")>
      <cfset querySetCell(myquery, "email", "ashish12@gmail.com")>

      <cfset queryAddRow(myquery)>
      <cfset querySetCell(myquery, "id", "3")>
      <cfset querySetCell(myquery, "name", "Midhun")>
      <cfset querySetCell(myquery, "email", "midhun99@gmail.com")>

      <cfreturn myquery>
    </cffunction>
</cfcomponent>