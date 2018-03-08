<!DOCTYPE html>
<html>
<head><title>User form</title></head>
<body>
<h2>User Info Form</h2>
<form action="example_8.php" method="post">
<table>

<tr><th>Name:</th><td
<?php if(!empty($_POST["submit"])  && (empty($_POST["name"]) || strlen(trim($_POST["name"]))==0)) 
echo "style=background-color:red;"; ?>><input type='text' name='name' value="
<?php if(!empty($_POST["name"])) 
echo $_POST["name"]; ?>" /> </td></tr>
<tr><th>Height:</th><td 
<?php if(!empty($_POST["submit"])  && (empty($_POST["height"]) || strlen(trim($_POST["height"]))==0)) 
echo "style=background-color:red;"; ?>><input type="text" name="height" value="
<?php if(!empty($_POST["height"])) 
echo $_POST["height"]; ?>"/></td></tr>
<tr><th>Weight:</th><td 
<?php if(!empty($_POST["submit"])  && (empty($_POST["weight"]) || strlen(trim($_POST["weight"]))==0 ))
 echo "style=background-color:red;"; ?>><input type="text" name="weight" value="
 <?php if(!empty($_POST["weight"]))
  echo $_POST["weight"]; ?>" /></td></tr>
<tr><td></td><td><input type="submit" name="submit" value="submitted" /></td></tr>
</table>
</form>
<?php
//Here we define the function to display the summary.
function display_summary($height, $weight) {
	session_start();
	for ($i=0; $i < count($_SESSION['name']); $i++) { 
		echo $_SESSION['name'][$i].'<br/>';
		if ($i>=1) echo "<h3>Analysis result</h3>";
		echo $_SESSION['result'][$i].'<br>';
	}
if(empty($height) || empty($weight))
   echo "Your body shape cannot be deteremined! <br/>";
else {
  echo "<h3>Analysis result: </h3>";
  echo $_POST["name"]. "<br/>"; 
    if($weight <=($height-100+5) && ($weight >=($height-100-5) ))
    $result = '<p style="color: green;"> You are normal weight. <br/></p>';
  elseif($weight >($height-100+5))
    $result = '<p style="color: red;"> You are overweighted! <br/></p>';
  elseif($weight <($height-100-5))
    $result = '<p style="color:yellow;">You are underweighted! <br/></p>';
  echo $result;
}
$_SESSION['name'][]= $_POST['name'];
$_SESSION['result'][] = $result;
}
echo "<hr />";

//Here we call the function to display the analysis summary if the name field is not empty!
if(!empty($_POST["name"]))
   display_summary( $_POST["height"], $_POST["weight"] );
?>
</body>
</html>









