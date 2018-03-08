<!DOCTYPE html>
<html>
<head>
   <meta charset="utf-8">
   <title>Homework 5-2</title>
</head>

<script>
var point = 0; 
var timeout;     
function show()
{
	var picture,x,y;	
	x=Math.random()*1000+1;
	y=Math.random()*1000+1;
	filename="mybug.jpg";
	document.getElementById("id1").src = filename;  	
	document.getElementById("id1").style.left = x+"px"; 
	document.getElementById("id1").style.top = y+"px"; 
	document.getElementById("id1").onclick = pointa;
	document.getElementById("stopbutton").disabled = false;  
	document.getElementById("startbutton").disabled = true;
	timeout = setTimeout('show()', 1000); 

}
function pointa()
{
		point++;
}
function stop()
{
	clearTimeout(timeout);
	document.getElementById("stopbutton").disabled = true;
	document.getElementById("startbutton").disabled = false;
	alert("your point is " + point);
}
function init() {
	var startbutton = document.getElementById("startbutton");
	var stopbutton = document.getElementById("stopbutton");
	startbutton.onclick = show;
	stopbutton.onclick = stop;
	stopbutton.disabled = true;
	var picture = document.getElementById("id1");
	filename.src = "mybug.jpg"
}


window.onload = init;

</script>

<body>

<h1>Bug game</h1>

<input type="button" value="Start" id="startbutton">
<input type="button" value="Stop" id="stopbutton">
<button onclick="location.reload()">Reset</button>

<p>
  <img src="mybug.jpg" id="id1" style="position:absolute;left:100px;top:90px">
</p>
</body>
</html>
