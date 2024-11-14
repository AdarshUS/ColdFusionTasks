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
       <cfset local.objPage = new components.Pages()>
    <cfset local.result = local.objPage.fetchRow(#session.pageid#)>
    <form method="POST">
      <div class="mb-3">
        <label for="page_name" class="form-label">Page Name</label>
        <input type="text" class="form-control" id="page_name" name="page_name" value="#local.result.pageName#">
      </div>
      <div class="mb-3">
        <label for="page_desc" class="form-label">Page Description</label>
        <textarea class="form-control" id="page_desc" name="page_desc" rows="3">#local.result.pageDescription#</textarea>
      </div>
      <div class="m-3">
        <input type="submit" id="submit" name="submit" class="btn btn-success">
      </div>
    </form>
    <cfif structKeyExists(form,"submit")>
      #local.objPage.editPage(form.page_name,form.page_desc,session.pageid)#     
    </cfif>
    </cfoutput>  
  </body>
</html>