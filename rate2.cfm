<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
	<form action="" method="post">
	  <label for="rate">Enter the Number from 1-5</label>
		<input type="text" id="rate" name="rate">
		<input type="submit">
	</form>
	<cfset rate = FORM.rate>
	<cfswitch expression="#rate#">
	<cfcase value="5">Very Good</cfcase>
	<cfcase value="4">Good</cfcase>
	<cfcase value="3">Fair</cfcase>
	<cfcase value="2">Ok</cfcase>
	<cfcase value="1">Ok</cfcase>
	<cfdefaultcase>Invalid</cfdefaultcase> 
	</cfswitch>
</body>
</html>