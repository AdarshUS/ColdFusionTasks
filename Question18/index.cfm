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
    <cfoutput >
      <cfset local.obj = new QueryData()>
      <cfset local.result = local.obj.createQuery()>
      <cfdump var="#local.result#">
    </cfoutput>    
  </body>
</html>