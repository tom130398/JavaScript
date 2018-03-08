<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Assignment 6</title>


<script>

//Global varaibles
var Heigth = []; //an array for the heigths
var Width = []; //an array for the widths
var count = 0; //the number of the elements
var Area = []; //an array for the areas
//This function inserts a new value into the array
function insert()
{	
	Heigth[count] = Number(document.getElementById("val1").value);
	Width[count] = Number(document.getElementById("val2").value);
	Area[count] =  Heigth[count] * Width[count]
	count = count + 1;
	document.getElementById("result1").innerHTML = "The width of the rectangle: " + Width;
	document.getElementById("result2").innerHTML = "The heigth of the rectangle: " + Heigth;
	document.getElementById("result3").innerHTML = ""; 
}

//This function prints all the indexes and values in the array
function display()
{
	var i, result = "<table><tr><th>Heigth</th><th>Width</th><th>Area</th></tr>";
	for (i=0; i < Heigth.length; i++)
	{
		result = result + "<tr><td>" + Heigth[i] + "</td><td>" + Width[i] + "</td><td>" + Area[i] + "</td></tr>";
	}
	result = result + "</table>";
	document.getElementById("result3").innerHTML = result;
}

</script>
</head>


<body>
<h1>Assignment 6</h1>

You can insert a new value into the array using the Insert button.
<p>
You can display the all the values styled as a table using the Display button. 
<p> 

Height: <input id="val1" type="text">
Width: <input id="val2" type="text"> 
<input type="button" value="Insert" onclick="insert()">
<input type="button" value="Display" onclick="display()">

</p>

<p id="result1"></p>
<p id="result2"></p>
<p id="result3"></p>
</body>
</html>