<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title></title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="./style/bootstrap.css">
  </head>
  <body>
    <cfif NOT structKeyExists(session,"logged")>
       <cflocation  url="./index.cfm">   
    </cfif>
   <h1>Welcome Page</h1>
   <a href="./logout.cfm" class="btn btn-success">Logout</a>
  </body>
</html>