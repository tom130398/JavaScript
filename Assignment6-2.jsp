<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Assignment 6-2</title>

<script> 
var dayNumbers = [0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
var Month = [0,"January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
function search()
{
	var Months = Number(document.getElementById("Month").value);
	var Days = Number(document.getElementById("Day").value); 
	var i, found, days, months, result; 
	found = false;
	result = "";
	
	for(i=0; i < dayNumbers.length; i++)  
	{
	if ((dayNumbers[i] >= Days) && (i == Months)) 
		{
			Months = Month[i];
			result = result + "The date is " + Days + ", " + Months + "<br>"; 
			found = true;
		}
	}
	if (found == false)    
	{
		result = "There is no date like that"
	}
	document.getElementById("result").innerHTML = result;	
}

</script>

</head>

<body>
<h1>What's the date ?</h1>


Days: <input type="text" id="Day">
Months: <input type="text" id="Month">
<input type="button" value="Search" onclick="search()" >


<p id="result"></p>

</body>
</html>


