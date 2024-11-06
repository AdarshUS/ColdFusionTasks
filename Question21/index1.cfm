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
    <cfoutput>
      <form method="POST">
        <label for="babeName">Enter the Name of the Baby:</label>
        <input type="text" id="babeName" name="babeName"><br>
        <label for="mail">Enter the Email:</label>
        <input type="email" id="mail" name="mail"><br>
        <label for="textBox">Enter the text:</label>
        <textarea id="textBox" name="textBox" rows="4" cols="40"></textarea><br>
        <label for="bdayImage">Enter the Image:</label>
        <input type="file" id="bdayImage" name="bdayImage">
        <input type="submit" id="submit" name=submitbtn>
      </form>
      <cfif structKeyExists(form,"submitbtn")>
       
        <cfset local.sendEmailObj=new sendEmail()>
        #local.sendEmailObj.sendMail(form.babeName,form.mail,form.textBox,form.bdayImage)#
      </cfif>
    </cfoutput>  
  </body>
</html>