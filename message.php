<?php 
require "database.php";
if(isset($_POST['name']) &&isset($_POST['email']) &&isset($_POST['message']))
{
	$name=$_POST['name'];
	$email=$_POST['email'];
	$message=$_POST['message'];

	$sql = "INSERT INTO contact_us (name,email,message)
    VALUES ('$name', '$email','$message')";

if ($conn->query($sql) === TRUE) {

   echo "success";
} else {
echo "error";
}


}

?>