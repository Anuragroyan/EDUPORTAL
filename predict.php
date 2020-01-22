<html>
<form action="predict.php" method="post">
<h1 style="color="dodgerblue" align="center">Predict College</h1>
<body style="background:url(teach.jpg); color:white;"><center>
<select name="rank">
 <option value="1">1</option>
 <option value="2">2</option>
 <option value="3">3</option>
 <option value="4">4</option>
 <option value="5">5</option>
 <option value="6">6</option>
 <option value="7">7</option>
 <option value="8">8</option>
 <option value="9">9</option>
 <option value="10">10</option>
 <option value="11">11</option>
 <option value="12">12</option>
 <option value="13">13</option>
 <option value="14">14</option>
 <option value="15">15</option>
 <option value="16">16</option>
 <option value="17">17</option>
 <option value="18">18</option>
 <option value="19">19</option>
 <option value="20">20</option>
</select>
<input type="submit" name="predict" value="predict" class="btn btn-default">
<a href="eduportal.php"><input type="button" name="home" value="home"></a>
</body>
</html>
<?php include 'conn.php';
if (isset($_POST['predict']))
{
	$c1= $_POST['rank'];
	

 if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$sql = mysqli_query($conn,"SELECT * FROM college where rank='$c1' ");
echo "<table border=2>";
$row=mysqli_fetch_array($sql);
 
        echo "<tr>";
		echo "<th>"; echo "Collegename"; echo "</th>";
		echo "<td>"; echo $row['name'];  echo "</td>";
		echo "</tr>";
		 echo "<tr>";
		echo "<th>"; echo "Course"; echo "</th>";
		echo "<td>"; echo $row['course'];  echo "</td>";
		echo "</tr>";
		 echo "<tr>";
		echo "<th>"; echo "Fees"; echo "</th>";
		echo "<td>"; echo $row['fees'];  echo "</td>";
		echo "</tr>";
		  }
	
else 
{
    echo "0 results";
}
   echo "</table>";
  
	
  $conn->close();

?>