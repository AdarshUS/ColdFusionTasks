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
      <input type="submit" id="test" name="test">
    </form>
    <cfif structKeyExists(form,"test")>
     
      <cfset obj=new counter()>
      <cfoutput>
        #obj.increaseCount()#
      </cfoutput>
    </cfif>
   
  </body>
</html>