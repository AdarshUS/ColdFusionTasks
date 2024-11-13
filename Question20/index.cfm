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
    <cfoutput>
    <div class="d-flex justify-content-center align-items-center">      
    <div>
        <form method="POST">
          <cfset local.objValidate = new components.validate()>
<!---           <cfset randomtext=new validate().randomtext()> --->
          <cfset local.randomtext = local.objValidate.randomtext()>
          <cfimage action="captcha" text="#local.randomtext#" difficulty="low" fontsize="18"><br>
          <label for="captchaText">Enter the captcha:</label>
          <input type="text" id="captchaText" name="captchaText"><br>
          <label for="mail">Enter the Email:</label>
          <input type="text" id="mail" name="mail"><br>
          <input type="submit" class="btn btn-success m-3">
        </form>
        <cfif structKeyExists(form,"captchaText")>
          <cfset local.objValidate= new validate()>
          <cfset result=local.objValidate.validatecaptcha(form.captchaText,local.randomtext)>          
          <cfif result>       
            Success        
          <cfelse>        
            Invalid Captcha       
          </cfif>
          <cfif NOT local.objValidate.validateEmail(form.mail)>
            Invalid Mail
          </cfif>
        </cfif>
      </div>      
    </div>   
    </cfoutput>    
  </body>
</html>