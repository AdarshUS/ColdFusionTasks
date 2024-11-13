<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title></title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="">
  </head>
  <body>
    <div class="h-70 border">
      <form method="post">
       <label for="dob">Enter your DateOfBirth</label>
       <input type="date" id="dob" name="dob">
       <label for="dobm">Enter your mother's DateOfBirth</label>
       <input type="date" id="dobm" name="dobm">         
       <input type="submit" class="btn btn-success"> 
      </form>
      <cfif structKeyExists(form,"dob")>
        <cfset local.obj=createObject("component","components.calculateAge")>
        <cfoutput>
        #local.obj.calculateAge(form.dob,form.dobm)#
        </cfoutput>
      </cfif>
    </div>    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
  </body>
</html>