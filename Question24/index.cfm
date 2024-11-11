<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title></title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="./style/bootstrap.css">
    <link rel="stylesheet" href="./style/style.css">
  </head>
  <body>
    <cfoutput >
       <form method="POST">
        <label for="firstName" class="form-label">Enter your First Name</label>
        <input type="text" id="firstName" name="firstName" class="form-control">
        <label class="form-label mailLabel">Enter your mail</label>
        <input type="email" id="mail" name="mail" class="form-control emailBox"><button type="button" class="checkBtn" onclick="checkEmail()">Check</button><span id="existError" ></span>
        <input type="submit"  class="btn btn-success submitBtn" id="submitBtn" name="submitBtn" value="submit" disabled>
      </form>
      <cfif structKeyExists(form,"submitBtn")>
      <cfdump var="#form.firstName#" >
        <cfset local.obj = new components.checkData()>
        #local.obj.insertData(form.firstName,form.mail)#    
      </cfif>                   
    </cfoutput>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="script/script.js"></script>
  </body>
</html>