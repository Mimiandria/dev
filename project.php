<?php
$con=mysqli_connect("localhost","root","","survey","3308");
if(!$con){
	die("unable to connect");
}
$name=$_GET['name'];
$mail=$_GET['mail'];
$feel=$_GET['feel'];
$rate=$_GET['rate'];
$need=$_GET['need'];
$rp=$_GET['rp'];
$mont=$_GET['mont'];
$scl=$_GET['scl'];
$impr=$_GET['impr'];
$sql="insert into survey values('$mail','$name', '$feel', '$rate', '$need','$rp', '$mont', $scl, '$impr')";
mysqli_query($con,$sql);
 echo "<div style='background-color:green;border:1px solid green; margin:10px auto;border-radius: 20px; text-align:center; width:800px; font-family: sans-serif'><h4>Thank you for filling this survey. It will be a great help to improve our product.</h4></div>";
mysqli_close($con);
?>