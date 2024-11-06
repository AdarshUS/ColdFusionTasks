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
    <form method="POST">
      <cfset randomtext=new validate().randomtext()>
     
      <cfimage action="captcha" text="#randomtext#" difficulty="low" fontsize="18">
      <label for="cap">Enter the captcha:</label>
      <input type="text" id="cap" name="cap"><br>
      <label for="mail">Enter the Email:</label>
      <input type="text" id="mail" name="mail">
      <input type="submit">
    </form>
    <cfset local.obj= new validate()>
    <cfoutput>
      <cfif local.obj.validatecaptcha(form.cap,randomtext)>
        <cfoutput>
          Success
        </cfoutput>
      <cfelse>
        <cfoutput>
          Invalid Captcha
        </cfoutput>
      </cfif>
    </cfoutput>
    
  </body>
</html>