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
    <form method="POST">
      <label for="inputText">Enter the word to be searched</label>
      <input type="text" id="inputText" name="inputText">
      <input type="submit">
    </form>
    <cfset obj=createObject("component","components.searchword")>
    <cfoutput>
      <cfif structKeyExists(form,"inputText")>
       Found the key word in #obj.searchWord(form.inputText)# times
      </cfif>     
    </cfoutput>
  </body>
</html>