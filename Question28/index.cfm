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
    <h1 class="text-primary m-2 text-center">Content Management System</h1>
      <div class="d-flex justify-content-center">
        <div class="form_container border">
          <form method="POST">
            <div class="mb-3">
              <label for="username" class="form-label">UserName</label>
              <input type="text" class="form-control" id="username" name="username">      
            </div> 
            <div class="mb-3">
              <label for="Password" class="form-label">Password</label>
              <input type="password" class="form-control" id="Password" name="Password">
            </div>            
            <button type="submit" class="btn btn-primary m-3" name="submit">Submit</button>
            <div class="mb-3">
              <p>Not a member? <a href="./signUp.cfm">Register</a></p>
            </div>
          </form>
          <cfif structKeyExists(form,"submit")>
            <cfset local.objVerification = new components.Verification()>
            <cfset local.password = hash("#form.Password#" , "SHA-256" , "UTF-8")>            
            <cfset local.result = local.objVerification.verifyData(form.username,local.password)>
            <cfif local.result.RecordCount GT 0>
              <cfif local.result.role EQ "Admin">
                <cfset session.Logged = true>
                <cflocation url="./adminPage.cfm" >
              <cfelse>
                <cfset session.Logged = true>
                <cflocation url="./userPage.cfm" >
              </cfif>
              <cfset local.role = local.result.role>             
            <cfelse>
              <p class="text-danger">Incorrect UserName or Password</p>
            </cfif>                                    
          </cfif>
        </div>    
      </div>   
  </body>
</html>