<?php 
session_start(); 
include "db.php";
if (isset($_POST['uname']) && isset($_POST['password'])) {

	function validate($data){
       $data = trim($data);
	   $data = stripslashes($data);
	   $data = htmlspecialchars($data);
	   return $data;
	}

	$uname = validate($_POST['uname']);
	$pass = validate($_POST['password']);

	if (empty($uname)) {
		header("Location: indexlogin.php?error=User Name is required");
	    exit();
	}else if(empty($pass)){
        header("Location: indexlogin.php?error=Password is required");
	    exit();
	}else{
		$sql = "SELECT * FROM xx WHERE user='$uname' AND pass='$pass'";

		$result = mysqli_query($con, $sql);

		if (mysqli_num_rows($result) === 1) {
			$row = mysqli_fetch_assoc($result);
            if ($row['user'] === $uname && $row['pass'] === $pass) {
            	$_SESSION['user'] = $row['user'];
            	$_SESSION['name'] = $row['name'];
            	$_SESSION['id'] = $row['id'];
            	header("Location: profile.php");
		        exit();
            }else{
				header("Location: indexlogin.php?error=Incorect User name or password");
		        exit();
			}
		}else{
			header("Location:indexlogin.php?error=Incorect User name or password");
	        exit();
		}
	}
	
}else{
	header("Location: veryindex.php");
	exit();
}