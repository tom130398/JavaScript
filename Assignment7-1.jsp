<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Assignment 7</title>
<script>
function processing()
{
	var classnames = document.getElementById("class").value;
	var result = "";
	var myChar = classnames.charAt(0);
	result += classnames.toUpperCase() + "<br>";
	if ((myChar == "a") || (myChar == "A"))
	{
		result += "The class " + classnames.toUpperCase() + " is at Wolffintie 30 in A-wing" + "<br>";
	}	
	else if ((myChar == "B") || (myChar == "b"))
	{
		result += "The class " + classnames.toUpperCase() + " is at Wolffintie 30 in B-wing" + "<br>";
	}
	else if ((myChar == "C") || (myChar == "c"))
	{
		result += "The class " + classnames.toUpperCase() + " is at Wolffintie 30 in C-wing" + "<br>";
	}
	else if (((myChar == "F") || (myChar == "f")) || ((myChar == "L") || (myChar == "l")))
	{
		result += "The class " + classnames.toUpperCase() + " is in Technobothnia" + "<br>";
	}
	else
	{
		result += "There is no class like this. Please retype";
	}
	document.getElementById("output").innerHTML = result;
}

</script>
</head>

<body>

<h1>Find class</h1>

<input type="text" id="class" size="50"/>
<input type="button" value="Process" onclick="processing()" />


<p id="output"></p>

</body>
</html>