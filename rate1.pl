<?php include 'conn.php';
$sql = "SELECT * FROM rate";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
   
    // output data of each row
    while($row = $result->fetch_assoc()) {
       
	   $id = $row['id'];
	   $name = $row['name'];
	   $review = $row['review'];
	   $rating = $row['rating'];
	   $hit = $row['hit'];
	   
	   echo "
	          <form action="indexR.php" method="POST">
			    $review :
				$name : <select name='rating'>
				        <option>1</option>
						<option>2</option>
						<option>3</option>
						<option>4</option>
						<option>5</option>
						<option>6</option>
						<option>7</option>
						<option>8</option>
						<option>9</option>
						<option>10</option>
						</select>
						
						<input type='hidden' value='$name' name='name'>
						<input type='submit' value='Rate!'> Current Rating: ": echo $current_rating; echo "
						</form>
						
						";
	   
    }
} else {
    echo "0 results";
}
$conn->close();

?>