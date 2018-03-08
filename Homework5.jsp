<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Homework 5</title>
<script>
var option, DR, RP; //P is the price, RP is the reduced price, DR is the discount rate
option = Number(prompt("Choose the product group 1) domestic appliance, 2) car accessories, 3) garden furniture, 4) other product groups "));
function discountrate(option)
{
if (option == 1)
{
	DR = 0.2
}
else if (option == 2)
{
	DR = 0.4
}
else if (option == 3)
{
	DR = 0.6
}
else if (option == 4)
{
	DR = 0
}
return DR
}
function calculate()
{
	var P, RP
	P = Number(document.getElementById("id1").value);
	RP = (1 - discountrate(option)) * P;
	document.getElementById("result").innerHTML = "The discountrate is " + DR + ", the reduced price is " + RP;	
}

</script>
<body>
<h1>Discount rate and reduced price</h1>
<p>
P = <input id="id1" type="text">
<input type="button" value="calculate" onclick="calculate()">
<p id="result">This is for the result</p>

