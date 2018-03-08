<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Homework 1</title>
</head>

<body>
<h1>Section2</h1>

<script>

var	d, a, p, S, C; //d is the distance traveled, a is the amount of fuel consumed by the vehicle, p is the price of fuel liter, S is the car consumption expressed as L/100 km, C is the cost of one kilometer expressed as cents/km

d = Number(prompt("What is the distance traveled?"));
a = Number(prompt("What is the amount of fuel consumed by the vehicle?"));
p = Number(prompt("What is the price of fuel liter?"));
S = d / a;	//Formular of the car consumption
C = ((p * a) / d) * 100; 	//Formular of the cost of one kilometer
document.write("The distance traveled is" + d + "<br>");
document.write("The amount of fuel consumed by the vehicle is" + a + "<br>");
document.write("The price of fuel fuel liter is" + p + "<br>");
document.write("The car consumption is" + S + "<br>");
document.write("The cost of one kilometer is" + C + "<br>");

</script>

</body>

</html>

