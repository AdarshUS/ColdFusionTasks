<cfcomponent >
  <cffunction name="insertData"  access="public" >
    <cfargument name="position" type="string" required="true" >
    <cfargument name="canRelocate" type="string" required="true">
    <cfargument name="startDate" type="string" required="true">
    <cfargument name="website" type="string" required="false">
    <cfargument name="resume"  type="string" required="false">
    <cfargument name="dollar"  type="string" required="false">
    <cfargument name="cent"  type="string" required="false">
    <cfargument name="firstName"  type="string" required="true">
    <cfargument name="lastName"  type="string" required="true">
    <cfargument name="email"  type="string" required="true">
    <cfargument name="phone"  type="string" required="true">

    <cfset local.salary = arguments.dollar & "."&arguments.cent>

    <cfquery name="AddApplication" datasource="cf_tutorial">
      INSERT INTO applications VALUES('#arguments.firstName#','#arguments.lastName#','#arguments.email#','#arguments.phone#','#arguments.position#','#arguments.canRelocate#','#arguments.startDate#','#arguments.website#','#arguments.resume#','#local.salary#')     
    </cfquery>
  </cffunction>
</cfcomponent>