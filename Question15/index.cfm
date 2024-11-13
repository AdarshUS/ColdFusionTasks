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
      <cfset obj=createObject("component","components.multiplication")> 
        #obj.multiply(1,2)# 
        #obj.multiply(1,2,3)# 
        #obj.multiply(1,2,3,4)# 
      <cfinvoke component="components.multiplication"  method="multiply" returnVariable="result1">
        <cfinvokeargument name="num1" value=1>
        <cfinvokeargument name="num2" value=2>
      </cfinvoke>
        #result1#
      <cfinvoke component="components.multiplication"  method="multiply" returnVariable="result2">
        <cfinvokeargument name="num1" value=1>
        <cfinvokeargument name="num2" value=2>
        <cfinvokeargument name="num3" value=3>
      </cfinvoke>
        #result2#
      <cfinvoke component="components.multiplication"  method="multiply" returnVariable="result3">
        <cfinvokeargument name="num1" value=1>
        <cfinvokeargument name="num2" value=2>
        <cfinvokeargument name="num3" value=3>
        <cfinvokeargument name="num4" value=4>
      </cfinvoke>
        #result3#
      <cfobject  name="obj" type="component" component="components.multiplication">
        #obj.multiply(1,2)#  
        #obj.multiply(1,2,3)# 
        #obj.multiply(1,2,3,4)#   
    </cfoutput>    
  </body>
</html>

