<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title></title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="">
  </head>
  <body>
    <cfoutput>    
      <cfset local.obj = new jsonToStruct()>
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
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  </body>
</html>
