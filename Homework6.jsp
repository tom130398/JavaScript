<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Homework 6</title>

<script>
var materials = ["Choose", "aluminium", "carbon fibre", "copper", "brass", "PVC", "steel",
"titanium"];
var densities = [0, 2.7, 1.8, 8.96, 8.4, 1.4, 7.8, 4.54];
var density;
var i;

function search()
{
	var result1="";
	var material = document.getElementById("id1").value;
	var found="";
	for (i=0; i < materials.length; i++)
	{
		if (material == materials[i])
		{
			density = densities[i];
			result1 = result1 + materials[i];
			found = true;
		}
	}
	if (found == false)
	{
		result1 = "There is no material like that";
	}
	document.getElementById("result1").innerHTML = result1	;
}

function calculate()
{
	search();
	var result2=""
	var Volume = Number(document.getElementById("id2").value);
	var amount = Number(document.getElementById("id3").value);
	var weight = density * Volume;
	result2 = result2 + "One machine part weight" + weight + "<br>";
	var remain = amount;
	var j=0;
	while (remain >= weight)
	{
		remain = remain - weight;
		j++;
		result2 = result2 + "After " + j + "part, " + remain + " kg available <br>";
	}
	document.getElementById("result2").innerHTML = result2
}
</script>
</head>
<body>
<h1>Machine parts</h1>
material: <input id="id1" type="text">
Volume: <input id="id2" type="text">
amount: <input id="id3" type="text">
<p id="result1"></p>
<p id="result2"></p>
<input type="button" value="CALCULATE" onclick="calculate()">

</body>
</html>