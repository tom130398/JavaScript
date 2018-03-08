<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Lines and triangles</title>
  
<style>
canvas {
   border: 1px solid black;
}
</style>

<script>
var context;
 
function myDrawLine(x1, y1, x2, y2, color)
{
	context.beginPath(); 		//begin a new separate segment 
	context.lineWidth = 1;
	context.strokeStyle = color;	
	//Draw line
	context.moveTo(x1, y1);    //move to point (x1, y1)
	context.lineTo(x2, y2);    //travel from current point to point (x2, y2)
	context.stroke();           //make line appear	
}

//Function init is called right after the page is loaded
function init()
{
	var canvas = document.getElementById("myCanvas");
	context = canvas.getContext("2d");
	var w = canvas.width;  
	var h = canvas.height;
	//upper left corner of canvas is point (0, 0)
	myDrawLine(10, 20, 110, 50, "red"); //arbitrary red line
	myDrawLine(0, h/2, w, h/2, "blue"); //horizontal line that halves canvas 
	myDrawLine(w/2, h, w/2, 0, "pink");
	myDrawLine(0, h, w, 0, "yellow");
	myDrawLine(0, 0, w, h, "purple");
}

window.onload = init;
</script>

</head>

<body>

<canvas id="myCanvas" width="500" height="300"></canvas>



</body>
</html>