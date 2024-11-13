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
      <cfset local.obj=createObject("component","components.printPattern")>
      <cfset local.result = local.obj.printPattern()>
      <cfloop index="i" from="1" to="#arrayLen(local.result)#">
        <cfloop index="j" from="1" to="#arrayLen(local.result[i])#">
          #local.result[i][j]#
        </cfloop>
          <br>           
      </cfloop>     
    </cfoutput>    
  </body>
</html>
