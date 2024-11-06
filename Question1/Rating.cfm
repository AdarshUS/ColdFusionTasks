<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rating</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
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
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>