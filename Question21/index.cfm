<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Baby Details Form</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="./style/style.css">    
  </head>
  <body class="d-flex justify-content-center text-success">
    <cfoutput>
      <h1 class="d-block">Birthday Wishes 🎈🎈🎈🎈</h1>
      <div>
        <form method="POST" enctype="multipart/form-data">
          <div class="mb-3">
            <label for="babeName" class="form-label">Enter the Name of the Baby:</label>
            <input type="text" id="babeName" name="babeName" class="form-control">
          </div>   
          <div class="mb-3">
            <label for="mail" class="form-label">Enter the Email:</label>
            <input type="email" id="mail" name="mail" class="form-control">
          </div>
          <div class="mb-3">
            <label for="textBox" class="form-label">Enter the text:</label>
            <textarea id="textBox" name="textBox" rows="4" cols="40" class="form-control"></textarea>
          </div>
          <div class="mb-3">
            <label for="bdayImage" class="form-label">Enter the Image:</label>
            <input type="file" id="bdayImage" name="bdayImage" class="form-control">
          </div>
          <div class="mb-3">
            <input type="submit" id="submit" name="submitbtn" class="btn btn-success">
          </div>        
        </form>
        <cfif structKeyExists(form, "submitbtn")>
          <cffile action="upload"  destination="C:\Users\Adarsh\Documents\backup" filefield="bdayImage" nameconflict="makeUnique" result="newPath">      
          <cfset local.sendEmailObj = new components.sendEmail()>
          <cfdump var="#newPath.ServerFile#">
          #local.sendEmailObj.sendMail(form.babeName, form.mail, form.textBox, "C:\Users\Adarsh\Documents\backup\"&newPath.ServerFile)#
        </cfif>
      </div>      
    </cfoutput>
  </body>
</html>
