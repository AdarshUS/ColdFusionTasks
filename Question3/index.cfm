<!DOCTYPE html>
  <cfoutput>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  </head>
  <body>
    <form method="post">
      <label for="num">Enter the Number</label class="m-2">
      <input type="text" id="num" name="num" class="form-control m-3">
      <input type="submit" class="btn btn-success m-3">
    </form>
    <cfif structKeyExists(form,"num")>
      <cfset local.obj= createObject("component","divisibleBy3")>
      <cfset ans=local.obj.checkDivisibility(form.num)>
        #ans#      
    </cfif>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
  </body>
</html>
  </cfoutput>
