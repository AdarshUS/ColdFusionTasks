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
    <h3 class="text-center text-success">Sign Up</h3> 
      <div class="d-flex justify-content-center">
        <div class="form_container border">
          <form method="POST">
            <div class="mb-3">
              <label for="username" class="form-label">Enter UserName</label>
              <input type="text" class="form-control" id="username" name="username">      
            </div> 
            <div class="mb-3">
              <label for="Password" class="form-label">Enter Password</label>
              <input type="password" class="form-control" id="Password" name="Password">
            </div>
            <div class="mb-3">
              <label for="confirmPassword" class="form-label">Confirm Password</label>
              <input type="password" class="form-control" id="confirmPassword" name="confirmPassword">
            </div>
            <div class="mb-3">
              <select name="role">
                <option value="User">User</option>
                <option value="Admin">Admin</option>
                <option value="Editor">Editor</option>
              </select>              
            </div>
            <div class="mb-3">
              <p>Have already an account? <a href="./index.cfm">Login here</a></p>
            </div>
            <button type="submit" class="btn btn-primary m-3" name="submit">Submit</button>
          </form>
          <cfif structKeyExists(form,"submit")>
            <cfset local.obj = new components.insertData()>
            <cfset local.result = local.obj.insertRecord(form.username,form.Password,form.role)>
            <cfif local.result>
              <p>SignUp Successful</p>  
            <cfelse>
              <p>Sign Up Failed</p>           
            </cfif>        
          </cfif>
        </div>    
      </div>   
  </body>
</html>