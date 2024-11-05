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
      <label for="num">Enter the Number:</label>
      <input type="text" id="num" name="num"><span id="error"></span><br>
      <input type="submit" onclick="validate()">
    </form>
    <cfset obj=new printColor()>
      <cfif structKeyExists(form,"num")>
        <cfset result=obj.isOddEven(form.num)>       
      
      <cfloop collection="#result#" item="key">        
      
        <cfoutput>
        <div style="color:#result[key]#;">
            #key# 
        </div>
                                         
        </cfoutput> 
     
                  
         
      </cfloop>
      </cfif>
    <script src="script.js"></script>
  </body>
</html>