<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Sum of numbers</title>

<script>
//------------------------------------------------------------------------------
//Global varaibles
var sum = 0;   //The sum of numbers, initialized to zero.
var row = "";   //Row for numbers entered, initialized to an empty string.
var k = 0
var average = 0
//------------------------------------------------------------------------------
//Function adds one number to the sum, outputs the sum and shows the numbers entered.
function insert() 
{
	var num, inputfield, outputfield; //Local variables
	inputfield = document.getElementById("input");
	outputfield = document.getElementById("output");
	num = Number(inputfield.value);
	sum = sum + num;
	row = row + num + " ";
	k = k + 1
	average = sum / k
	outputfield.innerHTML = "Sum: " + sum  + "<br>Numbers: " + row + "<br>Average: " + average;
	inputfield.select();
	
}
//------------------------------------------------------------------------------
</script>
</head>

<body>

<h1>Summing up many numbers</h1>
<p>
Enter a number and click the Insert button.

<p>
Number: <input id="input" type="text">
<p>
<input type="button" value="Insert" onclick="insert()" >
<p>
<button onclick="location.reload()">Reset</button>

<p id="output">This is for the result</p>

</body>
</html>