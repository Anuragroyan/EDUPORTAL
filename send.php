<?php
    $from="anuragroy8425@gmail.com";
	$email=$_POST['email'];
	$subject=$_POST['subject'];
	$message=$_POST['message'];
	$headers = "From: $email\n";
	$headers .= "MIME-Version: 1.0\n";
	$headers .= "Content-type: text/html; charset=iso-8859-1\n";
	if( mail($email, $subject, $message, $headers) ){
		echo "success";
		print "Your message has been sent: </br>$email</br>$subject</br>$message</p>";

	} else {
		echo "The server failed to send the message. Please try again later.";
	}
?>