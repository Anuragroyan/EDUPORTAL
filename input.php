<?php include 'conn.php';
if ($conn->connect_error)
{
	 die("connection failed:" . $conn->connect_error);
	 
}	
$firstname =  mysqli_real_escape_string($conn, $_POST['firstname']);
$lastname = mysqli_real_escape_string($conn, $_POST['lastname']);
$dob= mysqli_real_escape_string($conn, $_POST['dob']);
$email_id = mysqli_real_escape_string($conn, $_POST['email_id']);
$contact_no =  mysqli_real_escape_string($conn, $_POST['contact_no']);
$collegename = mysqli_real_escape_string($conn, $_POST['collegename']);
$schoolname = mysqli_real_escape_string($conn, $_POST['schoolname']);
$mark = mysqli_real_escape_string($conn, $_POST['mark']);
$marks =  mysqli_real_escape_string($conn, $_POST['marks']);
$graduate =  mysqli_real_escape_string($conn, $_POST['graduate']);


 $sql = " INSERT INTO apply ( firstname, lastname , dob , email_id , contact_no , collegename ,graduate , schoolname , mark , marks ) VALUES ('$firstname', '$lastname' ,NOW() , '$email_id' , '$contact_no' ,'$collegename' , '$graduate','$schoolname','$mark','$marks')";
 
  if($conn->query($sql) === TRUE){
	  echo "record added  successfully";
	  header("location:apply.php");
  }
  else
  {
	  echo "error". $sql. "<br/>". $conn->error;  
  }	  
  $conn->close();
?>
