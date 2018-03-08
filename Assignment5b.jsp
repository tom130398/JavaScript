<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Create a triangle</title>
<style>
canvas
{
border: 1px solid violet;
}
</style>
<script>
var context;
function myDrawLine(x1, y1, x2, y2, color)
{
context.beginPath();
context.lineWidth = 1;
context.strokeStyle = color;
context.moveTo(x1, y1);
context.lineTo(x2, y2);
context.stroke();
}
function init()
{
var canvas = document.getElementById("myCanvas");
context = canvas.getContext("2d");
var w = canvas.width;
var h = canvas.height;
myDrawLine(30, 30, 450, 60, "blue");
myDrawLine(450, 60, 330, 150, "red");
myDrawLine(330, 150, 30, 30, "yellow");
}
window.onload = init;
</script>
</head>
<body>
<canvas id="myCanvas" width ="500" height ="500"></canvas>
</body>
</html>