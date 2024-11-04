<cfset local.obj=createObject("component","multiply")>
<cfset result=local.obj.multiply(1,2)>
<cfdump var="#result#">
<cfset result=local.obj.multiply(1,2,3)>
<cfdump var="#result#" >
<cfset result=local.obj.multiply(1,2,3,4)>
<cfdump var="#result#" >