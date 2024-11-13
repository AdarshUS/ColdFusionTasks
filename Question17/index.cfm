<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title></title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="./style/style.css">
  </head>
  <body>
    <cfoutput>
      <form method="POST" onsubmit="return validate()">
        <label for="num">Enter the Number:</label>
        <input type="text" id="num" name="num"><span id="error"></span><br>
        <input type="submit" onclick="validate()">
      </form>
      <cfset local.obj=new components.printColor()>
      <cfif structKeyExists(form,"num")>
        <cfset result=local.obj.isOddEven(form.num)>      
        <cfloop collection="#result#" item="key">        
          <div style="color:#result[key]#;">
            #key# 
          </div>         
        </cfloop>
      </cfif>
    </cfoutput>
    <script src="./script/script.js"></script>
  </body>
</html>