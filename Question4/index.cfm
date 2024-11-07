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
    <cfset local.obj= createObject("component","dateOperation")>
    #local.obj.getTimeinfo()#
    <cfset result = local.obj.DisplayLastFiveDates()>
    <cfdump var="#result#">
    <cfloop collection="#result#" item="key">
      <div style="color:#result[key]#">#key#</div>
    </cfloop>
   </cfoutput>
  </body>
</html>