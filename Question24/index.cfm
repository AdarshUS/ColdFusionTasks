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
      <label for="firstName" class="form-label">Enter your First Name</label>
      <input type="text" id="firstName" name="firstName" class="form-control">
      <label class="form-label mailLabel">Enter your mail</label>
      <input type="email" id="mail" name="mail" class="form-control emailBox"><button class="checkBtn">Check</button>
      <input type="submit" disabled class="btn btn-success submitBtn">
    </form>
  </body>
</html>