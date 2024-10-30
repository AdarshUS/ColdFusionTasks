<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rating</title>
	
</head>
<body>
  
      <form method="post">
      <label for="rate">Enter a Number (1-5)</label class="m-2">
      <input type="text" id="rate" name="rate" class="form-control m-3">
      <input type="submit" class="btn btn-success m-3">
    </form>

    <cfoutput>
      
       <cfif isNumeric(form.rate) AND form.rate GTE 1 AND form.rate LTE 5>
          <cfset local.obj= createObject("Component","rate2")>
          <cfset local.result = local.obj.getRate(form.rate)>
           #local.result#
       <cfelse>
					Invalid Number
       </cfif>      
          
    </cfoutput>
</body>
</html>