<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title></title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="./style/bootstrap.css">
  </head>
  <body>
    <cfoutput >
      <form method="POST">     
        <div class="mb-3">
          <label for="exampleFormControlTextarea1" class="form-label">Enter the Text</label>
          <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name="inputText"></textarea>
        </div>
        <input type="submit" id="submitbtn" name="submitbtn" class="btn btn-success mt-2">
      </form>
      <cfif structKeyExists(form,"submitbtn")>
        <cfset local.obj = new components.Insert()>
        <cfset local.text = form.inputText>   
        <cfset local.arr = local.text.split("[ .]+")>
        <cfloop array="#local.arr#" item="item">
          #local.obj.insertData(item)#
        </cfloop>
      </cfif>   
    </cfoutput>    
  </body>
</html>