<?php include 'conn.php';
if (isset($_POST['compare']))
{
	$c1= $_POST['college_name1'];
	$c2= $_POST['college_name2'];

 if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$sql = mysqli_query($conn,"SELECT * FROM college where name='$c1' ");

  echo "<table border=2>";
   
/*if ($result->num_rows > 0) {
	while($row = $result->fetch_assoc()) {
  */  // output data of each row
  
  
  $row=mysqli_fetch_array($sql);
 
	$sql1 = mysqli_query($conn,"SELECT * FROM college where name='$c2' ");

  echo "<table border=2>";
/*if ($result->num_rows > 0) {
	while($row = $result->fetch_assoc()) {
  */  // output data of each row
  
  
  $row1=mysqli_fetch_array($sql1);
 
        echo "<tr>";
		echo "<th>"; echo "Rank"; echo "</th>";
		echo "<td>"; echo $row['rank'];  echo "</td>";
		echo "</tr>";
			 echo "<tr>";
		echo "<th>"; echo "Collegename"; echo "</th>";
		echo "<td>"; echo $row["name"];  echo "</td>";
		echo "</tr>";
			 echo "<tr>";
		echo "<th>"; echo "Course"; echo "</th>";
		echo "<td>"; echo $row["course"];  echo "</td>";
		echo "</tr>";
			 echo "<tr>";
		echo "<th>"; echo "Fees"; echo "</th>";
		echo "<td>"; echo $row["fees"];  echo "</td>";
		echo "</tr>";
		 echo "<tr>";
		echo "<th>"; echo "Review"; echo "</th>";
		echo "<td>"; echo $row["review"];  echo "</td>";
		echo "</tr>";
		echo "<tr>";
		echo "<td colspan=3>"; echo "</td>";
		echo "</tr>";
		echo "<tr>";
		echo "<th>"; echo "Rank"; echo "</th>";
		echo "<td>"; echo $row1['rank'];  echo "</td>";
		echo "</tr>";
			 echo "<tr>";
		echo "<th>"; echo "Collegename"; echo "</th>";
		echo "<td>"; echo $row1["name"];  echo "</td>";
		echo "</tr>";
			 echo "<tr>";
		echo "<th>"; echo "Course"; echo "</th>";
		echo "<td>"; echo $row1["course"];  echo "</td>";
		echo "</tr>";
			 echo "<tr>";
		echo "<th>"; echo "Fees"; echo "</th>";
		echo "<td>"; echo $row1["fees"];  echo "</td>";
		echo "</tr>";
		 echo "<tr>";
		echo "<th>"; echo "Review"; echo "</th>";
		echo "<td>"; echo $row1["review"];  echo "</td>";
		echo "</tr>";
    }
	
else 
{
    echo "0 results";
}
   echo "</table>";
  
	
  $conn->close();

?>














<html>
<form action="compare.php" method="post">
<h1 style="color="dodgerblue" align="center">Compare College</h1>
<body style="background:url(teach.jpg); color:white;"><center>
<select name="college_name1">
 <option value="chirst college">chirst college</option>
 <option value="Kristu Jayanti college">Kristu Jayanti college</option>
 <option value="Delhi University">Delhi University</option>
 <option value="University college kurukshetra">University college kurukshetra</option>
 <option value="Institute of Management of studies">Institute of Management of studies</option>
 <option value="Women's christian college">Women's christian college</option>
 <option value="DAV college,chandigarh">DAV college,chandigarh</option>
 <option value="stella Maris College">stella Maris College</option>
 <option value="Madras christian college">Madras christian college</option>
 <option value="Xavier institute of computer application">Xavier institute of computer application</option>
 <option value="RV college of engineering">RV college of engineering</option>
 <option value="MS Ramaiah institute of technology">MS Ramaiah institute of technology</option>
 <option value="Bangalore institute of technology">Bangalore institute of technology</option>
 <option value="AIMS University">AIMS University</option>
 <option value="Presidency college">Presidency college</option>
 <option value="Acharya institute of management and science">Acharya institute of management and science</option>
 <option value="Nitte Meenashi university">Nitte Meenashi university</option>
 <option value="oxford college of enineering">oxford college of enineering</option>
 <option value="new horizon college of engineering">new horizon college of engineering"</option>
 <option value="dayanandsagar college">dayanandsagar college</option>
</select>
<select name="college_name2">
<option value="chirst college">chirst college</option>
 <option value="Kristu Jayanti college">Kristu Jayanti college</option>
 <option value="Delhi University">Delhi University</option>
 <option value="University college kurukshetra">University college kurukshetra</option>
 <option value="Institute of Management of studies">Institute of Management of studies</option>
 <option value="Women's christian college">Women's christian college</option>
 <option value="DAV college,chandigarh">DAV college,chandigarh</option>
 <option value="stella Maris College">stella Maris College</option>
 <option value="Madras christian college">Madras christian college</option>
 <option value="Xavier institute of computer application">Xavier institute of computer application</option>
 <option value="RV college of engineering">RV college of engineering</option>
 <option value="MS Ramaiah institute of technology">MS Ramaiah institute of technology</option>
 <option value="Bangalore institute of technology">Bangalore institute of technology</option>
 <option value="AIMS University">AIMS University</option>
 <option value="Presidency college">Presidency college</option>
 <option value="Acharya institute of management and science">Acharya institute of management and science</option>
 <option value="Nitte Meenashi university">Nitte Meenashi university</option>
 <option value="oxford college of enineering">oxford college of enineering</option>
 <option value="new horizon college of engineering">new horizon college of engineering"</option>
 <option value="dayanandsagar college">dayanandsagar college</option>
</select>
 <br><br><br>
<input type="submit" name="compare" value="compare" class="btn btn-default">
<a href="eduportal.php"><input type="button" name="home" value="home"></a>
</form>
</body>
</html>