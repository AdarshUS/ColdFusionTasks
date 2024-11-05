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
    <form>
      <cfimage action="captcha" text="cool" difficulty="medium" fontsize="18">
      <label for="cap">Enter the captcha:</label>
      <input type="text" id="cap" name="cap"><br>
      <label for="mail">Enter the Email:</label>
      <input type="text" id="mail" name="mail">
    </form>
    <cfset local.obj= new validate(form.cap)>
    <cfoutput>
      #local.obj.validatecaptcha()#
    </cfoutput>
  </body>
</html>