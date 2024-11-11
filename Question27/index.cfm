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
    <form method="POST">
      <div class="form-group">
        <label for="exampleInputEmail1">Enter Your UserName:</label>
        <input type="text" class="form-control" id="userName" name="userName" placeholder="Enter Your Username">
        <small id="emailHelp" class="form-text text-muted">We'll never share your details with anyone else.</small>
      </div>
      <div class="form-group">
        <label for="exampleInputPassword1">Password</label>
        <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password" name="exampleInputPassword1">
      </div>     
      <button type="submit" class="btn btn-primary mt-3">Submit</button>
    </form>    
  </body>
</html>