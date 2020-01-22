<html>
<h1 style="color:Dodgerblue" align="center">Feedback Details</h1>
<a href="eduportal.php"><input type="button" name="home" value="home"></a>
<style>
 input[type="text"] {
	  width:250px;
  }
  input[type="submit"] {
	  width:250px;
	  color:skyblue;
  }
</style>
<table border="5" align="center" bgcolor="lightgray">
<form action="feedback1.php" method="post">
<body><center>
<tr>
<td>Name</td>
<td><input type="text" name="name" placeholder="Name"/ required></td>
</tr>
<tr>
<td>Email_id</td>
<td><input type="text" name="email_id" placeholder="Email_id"/ required></td>
</tr>
<tr>
<td>Comments</td>
<td><textarea rows="5" cols="60" name="comments" placeholder="comments" required></textarea></td>
</tr>
<tr>
<td colspan="4" align="center"><input type="submit" value="submit" class="btn btn-defaults" name="submit"/></td>
</tr>
</table
</body>
</form>
</html>