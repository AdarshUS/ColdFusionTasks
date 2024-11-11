<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title></title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="./style/bootstrap.css">
    <link rel="stylesheet" href="./style/style.css">
  </head>
  <body>
    <cfoutput>
      <form method="POST" enctype="multipart/form-data">
        <div class="mb-3">
          <label for="formFile" class="form-label">Select Your File to be Uploaded</label>
          <input class="form-control" type="file" id="formFile" name="formFile">
          <input type="submit" id="submit" name="submit">
        </div>
      </form>
      <cfif structKeyExists(form,"submit")>
        <cfset local.obj = new components.Uploadfile()>
        <cfset local.fileContent = local.obj.uploadFile(form.formFile)>
        <cfset local.fileContentArray = local.fileContent.split("[ .]+")>
        <cfdump var="#local.fileContentArray#" >      
        <cfloop array="#local.fileContentArray#" item="item">
          #local.obj.insertData(item)#
        </cfloop>
      </cfif>
    </cfoutput>    
  </body>
</html>