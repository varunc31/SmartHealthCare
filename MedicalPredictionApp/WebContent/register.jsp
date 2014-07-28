<html lang="en"><head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Signin Smart Healthcare</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap-login.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/signin.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="js/ie-emulation-modes-warning.js"></script>

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="js/ie10-viewport-bug-workaround.js"></script>

    <style>
        body {
        display: table;
        width: 100%;
        height: auto;
        padding: 100px 0;
        color: #002952;
        background-image:url('img/healthcareblurred.jpg');
        background-color:#cccccc;
        background-image: url(img/healthcare-pr.jpg) no-repeat bottom center scroll;
        -webkit-background-size: cover;
        -moz-background-size: cover;
        background-size: cover;
        -o-background-size: cover;
        }   
    </style>



    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

    <div class="container thisbackground">

      <form class="form-signin" role="form"  action="/CMPE_295B/register" method="post">
        <h2 class="form-signin-heading" style="color:white";>Please register</h2>
        <input type="text" name="userName" class="form-control" placeholder="Name" required="" autofocus="">
        <input type="email" name="email" class="form-control" placeholder="Email address" required="" autofocus="">
        <input type="password" name="password" class="form-control" placeholder="Password" required="" autofocus="" style="margin-bottom:0px";>
        <input type="password" class="form-control" placeholder="Confirm Password" required="">
        <div class="checkbox">
          <label>
            <input type="checkbox" value="remember-me"> Remember me
          </label>
        </div>
        
        <button class="btn btn-lg btn-primary btn-block" type="submit" style="margin-bottom:10px";>Register</button>
        <a href="file:///C:/Users/I839092/Desktop/Master's%20Project%20295B/grayscale/login.html" style="color:#002952";>Already have an account?</a>
      </form>

    </div> <!-- /container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
  

</body></html>