<?php
session_start();
if (isset($_SESSION["username"])) {
    $username = $_SESSION["username"];
    session_write_close();
} else {
    // since the username is not set in session, the user is not-logged-in
    // he is trying to access this page unauthorized
    // so let's clear all session variables and redirect him to index
    session_unset();
    session_write_close();
    $url = "./index.php";
    header("Location: $url");
}

?>
<html>
<head>
<TITLE>quiz3</TITLE>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
<link href="assets/css/phppot-style.css" type="text/css"
	rel="stylesheet" />
<link href="assets/css/user-registration.css" type="text/css"
	rel="stylesheet" />
</head>
<body>
<div class="nav">
<div class="container">
  <header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 border-bottom">
    <a href="/" class="d-flex align-items-center col-md-3 mb-2 mb-md-0 text-dark text-decoration-none">
    Quiz3
    </a>

    <ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
      <li>Welcome <?php echo $username;?></li>
      
    </ul>

    <div class="col-md-3 text-end">
      <button type="button" class="btn btn-primary"><a href="logout.php">Log out</a></button>
      <!-- <p class="login-signup"><a href="logout.php">Logout</a></p> -->
    </div>
  </header>
</div>
</div>

  <section id="main-wrap">
    <div class="container">
   <div class="row">
       <div class="col-lg-3">
           <div class="sidebar">
           <nav class="sidebar" role="navigation">
    <div class="container-fluid">
      <div class="navbar-header bkgnd">
        <h4>Video Category</h4>
      </div>
      <div class="colsm12" id="">
        <ul class="sideNav nav navbar">
      <?php  $query = mysql_query("SELECT * FROM category");

echo "<select name='cat-id' size='1'>";

while($avar = mysql_fetch_array($query))
{
    echo "<option value='". $avar['user'] ."'>". $avar['fname'] ." ". $avar['lname'] ."</option>";
}

echo "</select>";
?>

          <li ><a href="#">Libros<span style="font-size:16px;" class="pull-right showopacity glyphicon glyphicon-th-list"></span></a></li>        
          <li ><a href="#">Tags<span style="font-size:16px;" class="pull-right showopacity glyphicon glyphicon-tags"></span></a></li>
        </ul>
      </div>
  </div>
</nav>
           </div>
       </div>
       <div class="col-lg-10">
           <div class="content">

           </div>
       </div>
   </div>
    </div>
  </section>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
</body>
</html>
