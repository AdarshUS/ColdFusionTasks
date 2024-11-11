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
      <cfset local.obj = new components.jsonToStruct()>
      <cfset local.result = local.obj.convertJson()>      
      <table class="table table-bordered m-4">
         <tr>
          <th>Name</th>
          <th>Age</th>
          <th>LOCATION</th>
         </tr>
      <cfloop array="#local.result#" index="person">     
        <tr>
          <td>#person.Name#</td>
          <td>#person.Age#</td>
          <td>#person.LOCATION#</td>
        </tr>     
      </cfloop>
     </table>
    </cfoutput>    
  </body>
</html>
