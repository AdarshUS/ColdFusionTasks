<!DOCTYPE html>
<html lang = "en">
  <head>
  	<meta charset = "UTF-8">
  	<meta name = "viewport" content = "width = device-width, initial-scale = 1.0">
  	<title>Document</title>
  	<link href="./style/bootstrap.css" rel="stylesheet" >
  </head>
  <body>
  	<cfoutput>
  		<form action = "" method = "POST">
  		    <div class = "text-center mt-3 w-100">
  		        <textarea name = "text" placeholder = "Enter the string" class = "w-55 mx-auto  mx-auto form-control border border-primary"></textarea>
  		        <input type = "submit" value = "Submit" name="submitButton" class = "btn btn-primary my-auto mt-3 w-55">
  		    </div>
  		</form>
  	  <cfif structKeyExists(form,"submitButton")>
  	      <cfset local.obj  =  new Components.tagCloud()>
  	      <cfset local.result  =  local.obj.wordCount(form.text)>
  	      <div class = "w-25 mx-auto mt-5 rounded-pill p-4">
  	          <div class = "text-center"><cfdump var="#local.result#"></div>
  	      </div> 
  	  </cfif>
  	</cfoutput>
  </body>
</html>

