<?php 
    require "config/constants.php";
    session_start();
?>

<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Start</title>
    <style> 
.topnav {
  position: relative;
  background-color: #000000;
  overflow: hidden;
}
.topnav a {
  float: left;
  color: #000000;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
  top: 50%;
  left: 30%;
}
.topnav a:hover {
  background-color: #000000;
  color: black;
}

.topnav a.active {

  color: white;
}
.topnav-centered a {
  float: none;
  position: absolute;
  top: 50%;
  left: 53%;
  transform: translate(-50%, -50%);
}

.topnav-centered2 a {
  float: none;
  position: absolute;
  top: 50%;
  left: 45%;
  transform: translate(-50%, -50%);
}
html { 
        background: url(pic1.jpg) no-repeat center fixed; 
        background-size: cover;
        background-color: #FFEBCD;
    }
.topnav-right {
  float: right;
}

    </style>
</head>
<body>
<div class="topnav">

<div class="topnav-centered">
  <a href="admin/login.php" class="active">Admin</a>
</div>
<div class="topnav-centered2">
  <a href="indexlogin.php" class="active">Salesman</a>
</div>

<a href="" >c</a>

</div>
</body>
</html>
