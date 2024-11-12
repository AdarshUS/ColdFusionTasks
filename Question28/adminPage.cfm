<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title></title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="./style/style.css">
    <link rel="stylesheet" href="./style/bootstrap.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  </head>
  <body>
    <cfoutput >
      <h1>Welcome to Admin Dashboard</h1>
      <cfset local.objPage = new components.Pages()>
      <cfset local.resultSet = local.objPage.fetchPage()>
      <table class="table table-bordered">
        <cfloop query="#local.resultSet#">
          <tr>
            <form method="POST">
              <td>#local.resultSet.pageid#</td>
              <td>#local.resultSet.pageName#</td>              
              <td><i class="fa-solid fa-pen-to-square icon"></i><button class="btn btn-info" name="edit">EDIT</button></td>
              <td><i class="fa-solid fa-trash icon"></i><button class="btn btn-danger" name="delete">DELETE</button></td>
              <input type="hidden" name="page_id" value="#local.resultSet.pageid#">
            </form>          
          </tr>
        </cfloop>           
      </table>
      <a href="./addpage.cfm" class="btn btn-success">Add More Pages</a>
      <cfif structKeyExists(form,"delete")>        
         #local.objPage.deletePage(form.page_id)#
      <cfelseif structKeyExists(form,"edit")>
        <cfset session.pageid = form.page_id>
        <cflocation url="./editPage.cfm" >
      </cfif>       
   </cfoutput>   
  </body>
</html>