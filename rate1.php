<?php 

 mysql_connect("localhost","root","")or die("couldn't connect server");
 mysql_select_db("eduportal")or die("couldn't connect database");
 
 $find_data = mysql_query("SELECT * FROM `rate` ");
   echo "<h1>BCA TOP COLLEGES</h1>";
    while($row = mysql_fetch_assoc($find_data)) {
       
	   $id = $row['id'];
	   $name = $row['name'];
	   $current_rating = $row['rating'];
	   $hit = $row['hit'];
	   
	   echo " <form action='indexR.php' method='POST'>
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
						<input type='submit' value='Rate!'> Current Rating: "; echo $current_rating; echo "
			     </form>
						";
	        }
echo "<a href=\"college.php\"><input type=\"button\" name=\"home\" value=\"home\"></a>";
?>