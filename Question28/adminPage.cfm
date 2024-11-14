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
    <link rel="stylesheet" href="./style/fontawesome/css/all.min.css"
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
              <td><i class="fa-solid fa-trash icon"></i><button class="btn btn-danger" name="delete" onclick="deletePage(this)" value="#local.resultSet.pageid#">DELETE</button></td>
              <input type="hidden" name="page_id" value="#local.resultSet.pageid#">
            </form>          
          </tr>
        </cfloop>           
      </table>
      <a href="./addpage.cfm" class="btn btn-success">Add More Pages</a>

      <button class="btn btn-info" id="logout">Logout</button>
   </cfoutput>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
   <script src="./script/script.js"></script>
  </body>
</html>