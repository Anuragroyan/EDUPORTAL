<?php

 if(isset($_POST['search'])){
	  $valuetosearch = $_POST['valuetosearch'];
	  $query = "SELECT * FROM `review` WHERE CONCAT(`name`,`email_id`,`comments`,`topic`) LIKE '%". $valuetosearch ."%'";
	  $search_result = filterTable($query);
 }
 else { 
       $query = "SELECT * FROM `review`" ;
	   $search_result = filterTable($query);
 }
 function filterTable($query){
	   $connect = mysqli_connect("localhost","root","","eduportal");
	   $filter_Result = mysqli_query($connect,$query);
	   return $filter_Result;
	   }
 
?>
<html>
<h1 style="color:Dodgerblue" align="center">REVIEWS</h1>
<body><center>
<style>
 
 input {
	       border-radius:7px;
		   color:Dodgerblue;
		   border-style:solid;
 }
     input[type="text"] {
    width: 350px;
}
  input[type="submit"] {
    width: 100px;
}
div {
	       border-radius:7px;
		   color:Dodgerblue;
		  border-width:5px;
	      
}
</style>
<form action="review.php" method="post">
  <input type="text" name="valuetosearch" placeholder="value to search" required ><br><br>
  <input type="submit" name="search" value="Filter"><br><br>
  <table bgcolor="skyblue" border="15" style="border-radius:35px";>
    <tr>
	  <th>name</th>
	  <th>email_id</th>
	  <th>topic</th>
	  <th>comments</th>
	 </tr> 
	 <?php while($row = mysqli_fetch_array($search_result)):?>
	 <tr>
	   <td><?php echo $row['name'];?></td>
	   <td><?php echo $row['email_id'];?></td>
	   <td><?php echo $row['topic'];?></td>
	   <td><?php echo $row['comments'];?></td>
	  </tr> 
	  <?php endwhile; ?>
	  </table>
	 </form>
	 <div><a href="addR.php"><input type="button" value="ADD REVIEWS"></a></div><br><br>
	 <a href="eduportal.php"><input type="button" name="home" value="home" class="btn-btn default"></a>
 </body>
</html> 