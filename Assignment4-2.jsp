<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Assignment 4</title>
<script>

function solve()
{
	var T, a, y, x, xmin, ymin, Tmin = 1000000
	var Result = ""; //empty string

	a = Number(document.getElementById("id1").value);
	if (0 <= a && a <= 5)
	{	
	for (x=1; x<= 6; x++)
	{
		for (y = 0.2; y <= 1.2; y+=0.2)
		{		
			T = Math.abs(a*Math.pow(x, 2)*Math.pow(y, 2) + Math.pow(6-x, 2) + (1-a)*(x/y));
			Result = Result + "x = " + x + " y = " + y + " T = " + T + "<br>";
			if (T < Tmin)
		{
			Tmin = T;
			xmin = x;
			ymin = y;
		}
		}
	}
	Result = Result + "xmin = " + xmin + " ymin = " + ymin + " Tmin = " + Tmin + "<br>";
	}
	else if (a > 5)
	{
	T = 0
	Result = Result + "There is no T";
	}
	document.getElementById("result").innerHTML = Result;
}
</script>
</head>
	
<body>
	<p>
	a: <input id="id1" type="text">
	<input type="button" value="sovle" onclick="solve()">
	
	<p id="result">This is for the result</p>
	
</body>
</html>