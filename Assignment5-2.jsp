<!DOCTYPE html>
<html>
<head>
<title>Assignment 5</title>
<script>
function number()
{
var a, b;
result="";
a=Number(document.getElementById("id1").value);
b=Number(document.getElementById("id2").value);
result=document.getElementById("output");
if (a < 0 ||  b < 0)
	{
	result.innerHTML=" a and b must greater than 0. Please type again."
	}
	else if ( b == 0 || a == 0)
	{
	result.innerHTML=" a and b cannot be 0. Please type again.";
	}
	else 
	{
	result.innerHTML=" the GCF of fraction : "+a+"/"+b+" is " + GCF(a,b);
	}
}
function GCF(a,b)
{
var r,x,y;
r = 1;
if (a < b)
	{
	r = a;
	a = b;
	b = r;
	}
while (r != 0)
	{
	x = Math.floor(a / b);
	y = b * x;
	r = a - y;
if (r != 0)
	{
	a = b;
	b = r;
	}
	}
return b;
}
</script>
</head>
<body>
	<h1>ADD NUMERATOR AND DENOMINATOR</h1>
	<p>
		numerator:<input id="id1" type="value">
		denominator:<input id="id2" type="value">
	<p> 
		<input type="button" value="calculate" onclick="number()">
	<p id="output"> RESULT !!!</p>
</body>
</html>