<?php include 'conn.php';
if ($conn->connect_error)
{
	 die("connection failed:" . $conn->connect_error);
	 
}	
$name =  mysqli_real_escape_string($conn, $_POST['firstname']);
$email_id = mysqli_real_escape_string($conn, $_POST['email_id']);
$username =  mysqli_real_escape_string($conn, $_POST['contact_no']);
$password = mysqli_real_escape_string($conn, $_POST['collegename']);



 $sql = " INSERT INTO register ( name,email_id , username , password ) VALUES ('$name', '$email_id' ,'$username' , '$email_id' , '$password')";
 
  if($conn->query($sql) === TRUE){
	  echo "record added  successfully";
	  header("location:register.php");
  }
  else
  {
	  echo "error". $sql. "<br/>". $conn->error;  
  }	  
  $conn->close();
?>