<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<title>Sum of numbers</title>
</head>

<body>

<h1>Sums up series of values</h1>


<script>

	var sum = 0;   //the sum of the numbers, initialized as zero
	var num;       //the number
do
	{
		num = Number(prompt("Enter a number")); //prompt the number
	    sum = sum + num;      //add the number to the sum
		document.write(num + "<br>");
	}
	while(sum < 100)
	document.write("The sum is " + sum);
</script>
	
<h1>Sums up the numbers from start to end(using while loop)</h1>

 <script>

var sum = 0; //the sum of the numbers, 
var start, end, S;
start = Number(prompt("Enter the start number"));
end = Number(prompt("Enter the end number"));
S = start
do
{
sum = sum + start
start = start + 1
}
while(start <= end)
document.write("The sum from " + S + " to " + end + " is " + sum);
</script>

<h1>Sums up the numbers from start to end(using for loop)</h1>
<script>

var sum = 0; //The sum of the numbers;
var start, end, k;  
start = Number(prompt("Enter the start number"));
end = Number(prompt("Enter the end number"));
for(k = start; k <= end; k++)
{
sum = sum + k;
}
document.write("The sum from " + start + " to " + end + " is " + sum);

</script>

<h1>Flip a coin</h1>

<script>

var time, head, tail
time = Number(prompt("Enter the times the coin flipped"));
document.write("The coin flipped "  +  time + " time(s)"  +  "<br>")

while (time > 0)
{
	result = Math.round(Math.random());
	if (result == 1) //1=tail and 0=head
	{
		tail++;
		document.write("Tail" + "<br>");
	}
	else
	{
		head++;
		document.write("Head" + "<br>");
	}
	time--;
}
</script>

<h1>Power of x</h1>
<style>
body
{
   margin-left: 20px;
}
h1
{
   color:orange;
}
table, th, td 
{
   border: 1px solid black;
}
td, th {
   padding-right:20px;
   padding-left:20px;
}
th {
   background-color: silver;
}
</style>

<script>
var lower, upper, step;
lower = Number(prompt("Enter the lower number"));
upper = Number(prompt("Enter the upper number"));
step = Number(prompt("Enter the step"));
document.write("<table><tr><th>x</th><th>x<sup>2</th><th>x<sup>3</th></tr>")
while (lower <= upper)
{
document.write("<tr><td>" + lower + "</td><td>" + Math.pow(lower, 2) + "</td><td>" + Math.pow(lower, 3) + "</td></tr>" );
lower +=step;
}
document.write("</table>");
</script>

</body>
</html>