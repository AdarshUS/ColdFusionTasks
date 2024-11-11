<!DOCTYPE html>
  <cfoutput>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./style/bootstrap.css">
  </head>
  <body>
    <form method="post">
      <label for="num">Enter the Number</label class="m-2">
      <input type="text" id="num" name="num" class="form-control m-3">
      <input type="submit" class="btn btn-success m-3">
    </form>
    <cfif structKeyExists(form,"num")>
      <cfset local.obj= createObject("component","components.divisibleBy3")>
      <cfset ans=local.obj.checkDivisibility(form.num)>
        #ans#      
    </cfif>    
  </body>
</html>
  </cfoutput>
