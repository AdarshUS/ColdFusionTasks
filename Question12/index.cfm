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
      <form method="POST">
        <label for="test">Enter the Number:</label>
        <input type="text" name="test" id="test">
        <input type="submit">
      </form>
      <cfif structKeyExists(form,"test")>
        <cfset local.obj= new components.databaseOperation()>
        <cfset local.result = local.obj.fetchData()>
        <cfdump var="#local.result#" >
        <cfoutput query=local.result>
          FirstName : #local.result.firstName#
          LastName : #local.result.LastName# <br>
        </cfoutput>
        <cfoutput>
         #form.test# row FirstName is #local.result.firstName[form.test]#
        </cfoutput> 
      </cfif>       
  </body> 
</html>