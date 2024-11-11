<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rating</title>
    <link href="./style/bootstrap.css" rel="stylesheet" >
    <link rel="stylesheet" href="./style/style.css">
  </head>
  <body>
    <cfoutput>
      <form method="post">
        <label for="rate">Enter a Number (1-5)</label class="m-2">
        <input type="text" id="rate" name="rate" class="form-control m-3">
        <input type="submit" class="btn btn-success m-3">
      </form>
      <cfif structKeyExists(form,"rate")>
        <cfif isNumeric(form.rate) AND form.rate GTE 1 AND form.rate LTE 5>
          <cfset local.obj= createObject("Component","components.Rating")>
          <cfset local.result = local.obj.getRate(form.rate)>
            #local.result#
        <cfelse>
            Invalid Number
        </cfif>       
      </cfif>    
    </cfoutput>		
  </body>
</html>