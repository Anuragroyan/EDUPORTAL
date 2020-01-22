<html>
<a href="eduportal.php"><input type="button" name="home" value="home"></a>
<h1 class="center" style="color:MediumSeaGreen" align="center">List Of Top 20 Colleges</h1>
<body><center>
<style>
  table {
	  margin: auto;
	  width:100%;
	  height:1000%;
	 
  }
  h1 {
	   font-style:oblique;
	   font-size: 5.7vw;
	   text-align:center;
  }
  .center{
    margin: auto;
    width: 98%;
    border: 3px solid gray;
    padding: 80px 0;
	position: absolute;
	text-align:center;
	
}
 
</style>
<?php include 'conn.php';
if ($conn->connect_error) {
    die("Connection failed:" . $conn->connect_error);
} 
$sql = "SELECT * FROM college";
$result = $conn->query($sql);
if ($result->num_rows > 0) {
    // output data of each row
	echo "<table bgcolor=\"LightGray\" border=\"15\" halign=\"top\">";
    while($row = $result->fetch_assoc()) 
	{  
		echo "<tr>";
		echo "<td>";?> <img src="<?php echo $row["image"] ; ?>" height="300" width="300"> <?php echo "</td>"; 
		echo "</tr>";
		echo "<tr>";
		echo "<th>"; echo "College_Name"; echo "</th>";
		echo "<td>"; echo $row["name"];  echo "</td>";
		echo "</tr>";
		echo "<tr>";
		echo  "<th>"; echo  "course"; echo "</th>";
		echo "<td>";   echo $row["course"]; echo "</td>";echo "</br>";
		echo "</tr>";
		echo "<tr>";
		echo  "<th>"; echo  "rank"; echo "</th>";
		echo "<td>";   echo $row["rank"]; echo "</td>";
		echo "</tr>";
		echo "<tr>";
		echo  "<th>"; echo  "review"; echo "</th>";
		echo "<td>";   echo $row["review"]; echo "</td>";
		echo "</tr>";
		echo "<tr>";
		echo  "<th>";echo "Exam"; echo "</th>";
		echo "<td>";  echo $row["exam"]; echo "</td>";
		echo "</tr>";
		echo "<tr>";
		echo "<th>"; echo "Fees"; echo "</th>";
		echo "<td>"; echo $row["fees"]; echo "</td>";
		echo "</tr>";
		echo "<tr>";
		echo "<td  align=\"center\">";  echo "<a href=\"apply.php\">";echo "<input type=\"button\" value=\"Apply\">"; echo "</a>"; ;echo "</td>"; 
		echo "<td align=\"center\">"; echo " <a href=\"rate1.php\">"; echo "<input type=\"button\" value=\"Rating\">"; echo "</a>"; echo "</td>";
		echo "</tr>";
		
    }
} else {
    echo "0 results";
}
 echo "</table>";
$conn->close();


?>
</body>
</html>

