<html>
<head>
<title>Student Discussion</title>
<style>
body{
	font-family:helvetica;
	background:url(Library.jpg);
}
h1{
	text-align:center;
	margin-top:20px;
	font-size:40px;
	color:#fff;
	text-shadow: 2px 2px 0px rgba(255,255,255,.7), 5px 7px 0px rgba(0, 0, 0, 0.1); 
}
#container{
	margin:auto;
	width:38%;
}
#username{
	width:100%;
	height:40px;
	border:1px solid silver;
	margin-top:40px;
	border-radius:5px;
	font-size:17px;
	padding:10px;
	font-family:helvetica;
	margin-bottom:10px;
}
#comment{
	width:100%;
	height:500px;
	border:1px solid silver;
	border-radius:5px;
	font-size:17px;
	padding:10px;
	font-family:helvetica;
}
#submit{
	width:200px;
	height:60px;
	border:none;
	background-color:tomato;
	color:#fff;
	margin-top:20px;
	border-radius:5px;
	font-size:20px;
	border-bottom:6px solid #E90003;
	margin-left:140px;
}
.comment_div
{
	width:500px;
	text-align:left;
	margin:20px auto;
	background:#F3F3F3;
	text-align:center;
}
.name{
	height:30px;
	line-height:30px;
	padding:8px;
	background:#fff;
	color:#777;
	text-align:left;
}
.comments{
	padding:0px 0px 24px 0px;
	font-size:20px;	
}
</style>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
 <script type="text/javascript">
function post()
{
  var comments = document.getElementById("comments").value;
  var name = document.getElementById("username").value;
  if(comments && name)
  {
    $.ajax
    ({
      type: 'post',
      url: 'post_comments.php',
      data: 
      {
         user_comm:comments,
	     user_name:name
      },
      success: function (response) 
      {
	    document.getElementById("all_comments").innerHTML=response+document.getElementById("all_comments").innerHTML;
	    document.getElementById("comments").value="";
        document.getElementById("username").value="";
  
      }
    });
  }
  
  return false;
}
</script>
</head>

<body>

  <h1>Student Discussion</h1>

  <form method='post' action="" onsubmit="return post();" id="container">
	  <input type="text" id="username" placeholder="Your Name" autocomplete="off">
	  <textarea id="comments" placeholder="Write Your Comment Here....."></textarea>  
	  <input type="submit" value="Post" id="submit">
  </form>

  <div id="all_comments">
  <?php
    $host="localhost";
    $username="root";
    $password="";
    $databasename="eduportal";

    $connect=mysql_connect($host,$username,$password);
    $db=mysql_select_db($databasename);
  
    $comm = mysql_query("select name,comments,post_time from comments order by id desc");
    while($row=mysql_fetch_array($comm))
    {
	  $name=$row['name'];
	  $comments=$row['comments'];
      $time=$row['post_time'];
    ?>
	
<div class="comment_div"> 
 <p class="name"><strong>Posted By:</strong> <?php echo $name;?> <span style="float:right"><?php echo date("j-M-Y g:ia", strtotime($time)) ?></span></p>
 <p class="comments"><?php echo $comments;?></p>	
</div>
  
    <?php
    }
    ?>
  </div>

</body>
</html>