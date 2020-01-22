<?php include 'conn.php';
if ($conn->connect_error)
{
	 die("connection failed:" . $conn->connect_error);
	 
}	
if (isset($_POST['submit']))
{
$name =  mysqli_real_escape_string($conn, $_POST['name']);
$email_id = mysqli_real_escape_string($conn, $_POST['email_id']);
$topic = mysqli_real_escape_string($conn, $_POST['topic']);
$comments = mysqli_real_escape_string($conn, $_POST['comments']);


 $sql = " INSERT INTO review ( name, email_id , topic , comments ) VALUES ('$name' ,'$email_id' , '$topic' , '$comments')";
 
  if($conn->query($sql) === TRUE){
	  echo "record added  successfully";
	  header("location:addR.php");
  }
  else
  {
	  echo "error". $sql. "<br/>". $conn->error;  
  }	  
}
  $conn->close();
?>
