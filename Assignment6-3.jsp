<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Assignment 6</title>

<script>
var products = ["Phones", "Apple iPhone 6 Plus 16GB", "Apple iPhone 4S 8GB",
"Apple iPhone 5s 32GB", "Doro Liberto 810", "Huawei Honor 7", "LG Neon 4G", "LG G45",
"Microsoft Lumia 535", "Microsoft Lumia 640", "Nokia 108", "Samsung Galaxy J5",
"Samsung Galaxy S5 Neo SM-G903F 16GB", "Samsung Galaxy S6 32GB", "Sony Xperia M4 Aqua"];
var prices = [0, 799, 250, 600, 249, 399, 129, 349, 98, 139, 25, 195, 395, 599, 269];
var numbers = [0, 5, 15, 20, 25, 30, 35, 40, 45, 50, 55, 60, 65, 70, 75];
function init()
{
	var i, options="";
	var selectElement = document.getElementById("select");
	for(i = 0; i < products.length; i ++)
	{
		options = options + "<option>" + products[i] + "</option>";
	}
	selectElement.innerHTML = options;
	selectElement.onchange = display;
	
}

function display()
{
	var index = document.getElementById("select").selectedIndex;
	var result = document.getElementById("result");
	if (index > 0)
	{
		result.innerHTML = products[index] + ": " + prices[index] + " .The price for " + numbers[index] + " of them is" + numbers[index] * prices[index	] 
	}
	else
	{
		result.innerHTML = "";
	}
}
window.onload = init;


</script>
</head>
<body>

<h1>Phone</h1>
<select id="select"></select>
<p id="result"></p>

</body>
</html>