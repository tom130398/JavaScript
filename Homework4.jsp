<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Homework 4</title>
<script>
var num, guess, k = 0
var Result = "";
num = Math.floor(Math.random()*100)+1;
function insert()
{
	guess = Number(document.getElementById("id1").value);
	k = k +1
	if (k <= 6)
	{
		if (num == guess)
		{
			Result = Result + "num = " + num + " guess = " + guess + " .You hit the right number" + "<br>";
		}
		else if (num < guess)
		{
			Result = Result + " guess = " + guess + " .The guess was bigger than the right number" + "<br>";
		}
		else if (num > guess)
		{
			Result = Result + " guess = " + guess + " .The guess was smaller than the right number" + "<br>";
		}
	}
	else if (k > 6)
	{
		Result = Result + "num = " + num + " .You hit the wrong number" + "<br>";
	}
	document.getElementById("result").innerHTML = Result;
}
</script>
</head>

<body>
<p>
	guess: <input id="id1" type="text">
	<input type="button" value="insert" onclick="insert()">
	
	<p id="result">This is for the result</p>
<p>
<button onclick="location.reload()">Reset</button>
	
</body>
</html>