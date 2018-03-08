<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Assignment 7</title>
<script>
function processing()
{
	var result = ""
	var emails = document.getElementById("email").value;
	var index1 = emails.indexOf("@");
	var index2 = emails.indexOf(".");
	var value = emails.length;
	var myChar1 = emails.charAt(0);
	var myChar2 = emails.charAt(value - 1);
	if ((value < 6) && (index1 == -1) && (index2 == -1) || ((myChar1 == "@") || (myChar2 == "@")))
	{
		result += "The email " + emails + " is invalid. Please retype.";
	}
	else
	{
		result += "The email " + emails + " is valid.";
	}
	document.getElementById("output").innerHTML = result;
}
</script>
</head>

<body>

<h1>Email address</h1>

<input type="text" id="email" size="50"/>
<input type="button" value="Process" onclick="processing()" />


<p id="output"></p>

</body>
</html>