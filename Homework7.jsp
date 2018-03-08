<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Homework 7</title>
<script>
function play()
{
var name = document.getElementById("name").value;
var card1 = Math.floor(Math.random() * 13) + 1;
var card2 = Math.floor(Math.random() * 13) + 1;
var card3 = Math.floor(Math.random() * 13) + 1;
var card4 = Math.floor(Math.random() * 13) + 1;
var P = card1 + card2
var C = card3 + card4
var result = "";
var k = 2
var cardC, cardP;
result += "The card1 is " + card1 + "<br>" + "The card2 is " + card2 + "<br>" + "The card3 is " + card3 + "<br>" + "The card4 is " + card4 + "<br>";
	k = k + 1;
	cardP = Math.floor(Math.random() * 13) + 1;
	result += "The cardP is " + cardP + "<br>";
	cardC = Math.floor(Math.random() * 13) + 1;
	result += "The cardC is " + cardC + "<br>";
	P = P + cardP
	C = C + cardC
	if (P == C)
	{
		result += "It's a tie";
	}
	else if (P < C)
	{
		result += "Computer wins";
	}
	else if (P > C)
	{
	result += "Player wins";
	}
	
	document.getElementById("output").innerHTML = result;
}

</script>
</head>
<body>
<h1>Cards game</h1>
<input type="text" id="name" size="50"/>
<input type="button" value="Play" onclick="play()" />
<button onclick="location.reload()">New game</button>
<p id="output"></p>
</body>
</html>
