<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<title>Homework 3</title>
</head>

<body>


<script>
var option;
option = Number(prompt("Choose the program that you want 1) Program 1, 2) Program 2, or 3) Program 3"));
if (option == 1)
{
var time;
time = Number(prompt("Enter the times the dice rolled"));
document.write("The dice rolled " + time + " time(s)" + "<br>")

while (time > 0)
{
	result = Math.floor(Math.random()*6)+1;
	document.write("The dice rolled " + result + "<br>")
	time--;
}
}
else if (option == 2)
{
var time = 0;
var num = 0

while (num < 6)
{
	num = Math.floor(Math.random()*6)+1;
	document.write("The dice rolled " + num + "<br>");
	time ++;
}
		document.write("The dice rolled " + time + "time(s)");
}
else if (option == 3)
{
 var time = 0, num1, num2;
 
 do 
 {
	 num1 = Math.floor(Math.random()*6)+1;
	 document.write("The dice rolled " + num1 + "<br>")
	 num2 = Math.floor(Math.random()*6)+1;
	 document.write("The dice rolled " + num2 + "<br>")
 }
while(num1 != num2)
{
	document.write("The dice rolled " + num1 + " and " + num2 + "<br>")

}
}
</script>

</body>
</html>