<cfset obj=createObject("component","multiplication")> 
 <cfoutput> 
  #obj.multiply(1,2)# 
  #obj.multiply(1,2,3)# 
  #obj.multiply(1,2,3,4)# 
 </cfoutput>
<cfinvoke component="multiplication"  method="multiply" returnVariable="result1">
  <cfinvokeargument name="num1" value=1>
  <cfinvokeargument name="num2" value=2>
</cfinvoke>
<cfoutput>
  #result1#
</cfoutput>
<cfinvoke component="multiplication"  method="multiply" returnVariable="result2">
  <cfinvokeargument name="num1" value=1>
  <cfinvokeargument name="num2" value=2>
  <cfinvokeargument name="num3" value=3>
</cfinvoke>
<cfoutput>
  #result2#
</cfoutput>
<cfinvoke component="multiplication"  method="multiply" returnVariable="result3">
  <cfinvokeargument name="num1" value=1>
  <cfinvokeargument name="num2" value=2>
  <cfinvokeargument name="num3" value=3>
  <cfinvokeargument name="num4" value=4>
</cfinvoke>
<cfoutput>
  #result3#
</cfoutput>
<cfobject  name="obj" type="component" component="multiplication">
<cfoutput>
  #obj.multiply(1,2)#  
  #obj.multiply(1,2,3)# 
  #obj.multiply(1,2,3,4)# 
</cfoutput>