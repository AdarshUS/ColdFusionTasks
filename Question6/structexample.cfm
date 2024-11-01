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
    <form method="post">
      <label for="key">Enter the Key</label>
      <input type="text" id="key" name="key">
      <label for="val">Enter the Value</label>
      <input type="text" id="val" name="val">
      <input type="submit">
    </form>    
    <cfif structKeyExists(form,"key") AND structKeyExists(form,"val")>      
        <cfset mystruct=StructNew("Ordered")>
        <cfset mystruct[form.key] = form.val>
        <cfoutput>
           Key is #form.key# and value is #mystruct[form.key]#
        </cfoutput>
    </cfif>
    
  </body>
</html>