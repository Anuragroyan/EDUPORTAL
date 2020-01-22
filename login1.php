
<?php 
session_start();
if (isset($_POST['sumbmit']))
{
		$user=$_POST['username'];
		$pass=$_POST['password'];

		$_SESSION['user'] = $user;
// Create connection
$conn = new mysqli('localhost','root','','eduportal');

// Check connection
if ($conn->connect_error){
    die("Connection failed: " . $conn->connect_error);
}
$sql = "SELECT * FROM register WHERE username='".$user."' and password='".$pass."' ";
$result = $conn->query($sql);

if (mysqli_num_rows($result) > 0)
	{
    // output data of each row
    if($row = $result->fetch_assoc()) 
		{
          header("location:eduportal.php");
		  $_SESSION['user'] = $user;
        }
	
	}	
 else
 {
	 if(mysqli_num_rows($result) == 0)
	 {
       echo "enter wrong credential";
	  
    }
	
	else
	{
	header("location:register.php");
	}
	


}
$conn->close();
}
?>