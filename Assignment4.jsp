<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Assignment 4</title>
<script>


function solve()
{
	var a, b, c, x1, x2, delta
	a = Number(document.getElementById("id1").value);
	b = Number(document.getElementById("id2").value);
	c = Number(document.getElementById("id3").value);
	delta = Math.pow(b, 2) -(4*a*c)
	if (a == 0)
	{
	document.getElementById("result").innerHTML = "This is not quadratic equation";
	}
	else if (delta < 0)
	{
	document.getElementById("result").innerHTML = "There are no real roots";
	}
	else if (delta >= 0)
	{
	x1 = (-b + Math.sqrt(delta))/(2*a)
	x2 = (-b - Math.sqrt(delta))/(2*a)
	document.getElementById("result").innerHTML = "x1 = " + x1 + "<br>x2 = " + x2;
	}
}
</script>

 
</head>

<body>
<h1>Quadratic equation solve</h1>
<p>
a: <input id="id1" type="text">
b: <input id="id2" type="text">
c: <input id="id3" type="text">
<input type="button" value="sovle" onclick="solve()">
<p id="result">This is for the result</p>

</body>
</html>