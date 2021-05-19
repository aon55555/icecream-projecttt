<?php
if (isset($_POST["login_user_with_product"])) {
	$product_list = $_POST["product_id"];
	$json_e = json_encode($product_list);
	setcookie("product_list",$json_e,strtotime("+1 day"),"/","","",TRUE);
}

?>
<!DOCTYPE html>
<html>
<head>
	<title>LOGIN</title>
	<link rel="stylesheet" type="text/css" href="style2.css">
</head>
<body>
     <form action="login2.php" method="post">
     	<h2>Salesman</h2>
     	<?php if (isset($_GET['error'])) { ?>
     		<p class="error"><?php echo $_GET['error']; ?></p>
     	<?php } ?>
     	<label>Username</label>
     	<input type="text" name="uname" ><br>

     	<label>Password</label>
     	<input type="password" name="password" ><br>

     	<button type="submit">Login</button>
     </form>
</body>
</html>
