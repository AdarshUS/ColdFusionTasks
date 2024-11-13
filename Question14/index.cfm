<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title></title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
  </head>
  <body>
    <cfoutput >
      <form method="POST" enctype="multipart/form-data">
      <div class="mb-3">
        <label for="imageName" class="form-label">Enter the Image Name</label>
        <input type="text" class="form-control" id="imageName" placeholder="Image Name" name="imageName">
      </div>
      <div class="mb-3">
        <label for="imageText" class="form-label">Enter the Text</label>
        <textarea class="form-control" id="imageText" name="imageText"></textarea>
      </div>
      <div class="mb-3">
        <label for="imageName" class="form-label">Select the Image</label>
        <input type="file" class="form-control" id="imageFile"  name="imageFile">
      </div>
      <div class="mb-3">        
        <input type="submit" class="btn btn-success" id="submitbtn"  name="submitbtn">
      </div>
    </form>
    <cfif structKeyExists(form,"submitbtn")>
      <cfset local.obj= new components.UploadImage()>
      <cfimage  action="writeToBrowser"  source="#form.imageFile#" width="50" height="50">      
    </cfif>   
    </cfoutput>
    
    

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  </body>
</html>