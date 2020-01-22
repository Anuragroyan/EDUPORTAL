<style>
 input type="button"{
	 align:center;
 }
</style>
<html>
<h1 style="color:gray" align="center">College Application Form</h1>
<a href="college.php" ><input type="button" name="home" value="home"></a>
<table border=5 align="center"  bgcolor="lightgray"> 
<body><center>
<form action="input.php" method="post">
<tr>
<th>firstname</th>
<td><input type="text" name="firstname" placeholder="firstname"/ required></td>
</tr>
<tr>
<th>lastname</th>
<td><input type="text" name="lastname" placeholder="lastname"/required></td>
</tr>
<tr>
<th>Dob</th>
<td><input type="date" name="dob" placeholder="dob"/></td>
</tr>
<tr>
<th>Email_id</th>
<td><input type="text" name="email_id" placeholder="email_id"/required></td>
</tr>
<tr>
<th>contact_no</th>
<td><input type="text" name="contact_no" placeholder="contact_no"/required></td>
</tr>
<tr>
<th>Collegename</th>
<td><input type="text" name="collegename" placeholder="collegename"/required></td>
</tr>
<tr>
<th>Graduation</th>
<td><input type="text" name="graduate" placeholder="graduate"/required></td>
</tr>
<tr>
<th>Schoolname</th>
<td><input type="text" name="schoolname" placeholder="schoolname"/required></td>
</tr>
<tr>
<th>12-class</th>
<td><input type="text" name="mark" placeholder="mark"/required></td>
</tr>
<tr>
<th>10-class</th>
<td><input type="text" name="marks" placeholder="marks"/required></td>
</tr>
<tr>
<td colspan=3 align="center"><input type="submit" class="btn btn-default" value="submit"/></td>
</tr>
</table>

</body>
</html>