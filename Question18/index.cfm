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
    <cfoutput>
      <cfset local.obj = new components.QueryData()>
      <cfset local.result = local.obj.createQuery()>     
      <table class="table table-success table-striped">
        <cfloop query="#local.result#">
          <tr>
            <td>#local.result.id#</td>
            <td>#local.result.name#</td>
            <td>#local.result.email#</td>
          </tr>         
        </cfloop>       
      </table>
    </cfoutput>    
  </body>
</html>