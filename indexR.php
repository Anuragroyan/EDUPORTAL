<?php 

        mysql_connect("localhost","root","")or die("couldn't connect server");
        mysql_select_db("eduportal")or die("couldn't connect database");
	   
	   
 $name = $_POST['name'];
 $post_rating = $_POST['rating'];
 
 $find_data = mysql_query("select * from rate where name='$name'");
 while($row = mysql_fetch_assoc($find_data))
 {
	  $id = $row['id'];
	  $current_rating = $row['rating'];
	  $current_hits = $row['hit'];
 }
    $new_hits = $current_hits + 1; 
	$update_hits = mysql_query("UPDATE rate  SET hit = '$new_hits' WHERE id='$id'");
	
	$pre_rating = $current_rating + $post_rating;
	$new_rating = $pre_rating / $new_hits;
	
	$update_rating = mysql_query("UPDATE rate  SET rating = '$new_rating' WHERE id='$id'");
	
	header("location:rate1.php");
	
?>