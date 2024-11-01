<!DOCTYPE html>
<cfapplication name="myapp" sessionmanagement="yes">
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Struct Key Form</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="">
  </head>
  <body>
    <form method="post">
      <label for="key">Enter the Key</label>
      <input type="text" id="key" name="key">
      <label for="val">Enter the Value</label>
      <input type="text" id="val" name="val">
      <input type="submit" value="Submit">
    </form>

    <cfif structKeyExists(form, "key") AND structKeyExists(form, "val")>
      <cfif NOT structKeyExists(session, "mystruct")>
        <cfset session.mystruct = structNew()>
      </cfif>

      <cfif structKeyExists(session.mystruct, form.key)>
        <p>Key already exists.</p>
      <cfelse>
        <cfset session.mystruct[form.key] = form.val>
        <p>Key and value added to the session structure.</p>
      </cfif>

      <cfdump var="#session.mystruct#">
    </cfif>
  </body>
</html>
