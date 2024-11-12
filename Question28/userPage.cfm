<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title></title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="./style/bootstrap.css">
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.14.0/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="./style/style.css">
  </head>
  <body>
    <cfoutput >
        <h1>User Page</h1>
        <cfset local.objPage = new components.Pages()>
        <cfset local.result = local.objPage.fetchPage()>
        <cfloop query="#local.result#">      
          <div id="listContainer">
            <div class="page_heading">#local.result.pageName#</div>
            <div class="display_none">#local.result.pageDescription#</div>
          </div>
        </cfloop>
    </cfoutput>   
    <script src="https://code.jquery.com/jquery-3.7.1.js"></script>
    <script src="https://code.jquery.com/ui/1.14.0/jquery-ui.js"></script>
    <script src="./script/script.js"></script>     
  </body>
</html> 
