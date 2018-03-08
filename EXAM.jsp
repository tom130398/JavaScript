<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>EXAM</title>
<body>
<script>
var product = prompt("What is the product?");
var price = Number(prompt("Enter the price"));
var charge = price + 7.50
if ((product == "Samsung" || (product == "LG")) && (price > 100))
{
	document.write("The product is in the campaign. The price of this product is " + price);
}
else if ((product != "Samsung" || (product != "LG")) && (price < 100))
{
	document.write("The product is not in the campaign. The price of this product is " + charge);
}

</script>
</body>
</head>
</html>
