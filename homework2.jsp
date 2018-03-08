<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8" />
<title>Homework 2</title>
</head>

<body>
<h1>Rock, scissors, paper game</h1>

<button onclick="location.reload()">New game</button>

<script>
var option, computer, name;
name = prompt("What is your name?");
document.write("Hello!" + name + "<br>")
option = Number(prompt("Choose the volume of 1) rock, 2) scissors, 3) paper"));
computer = Math.floor(Math.random() * 3) + 1;
if (option == 1 && computer == 1)
{
document.write("Player choose rock" + "<br>");
document.write("Computer choose rock" + "<br>");
document.write("It's a tie" + "<br>");
}
else if (option == 1 && computer == 2)
{
document.write("Player choose rock" + "<br>");
document.write("Computer choose scissors" + "<br>");
document.write("Player win" + "<br>");
}
else if (option == 1 && computer == 3)
{
document.write("Player choose rock" + "<br>");
document.write("Computer choose paper" + "<br>");
document.write("Computer win" + "<br>");
}
else if (option == 2 && computer == 1)
{
document.write("Player choose scissors" + "<br>");
document.write("Computer choose rock" + "<br>");
document.write("Computer win" + "<br>");
}
else if (option == 2 && computer == 2)
{
document.write("Player choose scissors" + "<br>");
document.write("Computer choose scissors" + "<br>");
document.write("It's a tie" + "<br>");
}
else if (option == 2 && computer == 3)
{
document.write("Player choose scissors" + "<br>");
document.write("Computer choose paper" + "<br>");
document.write("Player win" + "<br>");
}
else if (option == 3 && computer == 1)
{
document.write("Player choose paper" + "<br>");
document.write("Computer choose rock" + "<br>");
document.write("Player win" + "<br>");
}
else if (option == 3 && computer == 2)
{
document.write("Player choose paper" + "<br>");
document.write("Computer choose scissors" + "<br>");
document.write("Computer win" + "<br>");
}
else if (option == 3 && computer == 3)
{
document.write("Player choose paper" + "<br>");
document.write("Computer choose paper" + "<br>");
document.write("It's a tie" + "<br>");
}


</script>

</body>
</html>
