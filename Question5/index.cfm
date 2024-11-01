<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title></title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="">
  </head>
  <body>
    <form method="post">
       <label for="dob">Enter your DateOfBirth</label>
       <input type="date" id="dob" name="dob">
       <label for="dobm">Enter your mother's DateOfBirth</label>
       <input type="date" id="dobm" name="dobm">         
       <input type="submit"> 
    </form>
    <cfif structKeyExists(form,"dob")>
      <cfset local.obj=createObject("component","calculateAge")>
      <cfoutput>
      #local.obj.calculateAge(form.dob,form.dobm)#
      </cfoutput>
    </cfif>
   
  </body>
</html>