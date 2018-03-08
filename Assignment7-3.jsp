<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Assignment 7</title>
<script>
var mailString, regex, testmail;
var result = "";
function processing()
{
	mailString = document.getElementById("str").value;
	regex = /^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
	testmail = regex.test(mailString);
	if (testmail)
		{
		result = result + "The email is valid.";
		}
	else
		{
		result = result + "The email is not valid.";
		}
	document.getElementById("output").innerHTML = result;
}
	</script>
</head>
<body>
<h1>Email address</h1>
Your email address: <input type="text" id="str" size="50/">
<input type="button" value="Process" onclick="processing()"/>
<p id="output"></p>
</body>

</html>