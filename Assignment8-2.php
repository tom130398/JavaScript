<!DOCTYPE html>
<html>
<body>
  <table border="1px">
  <tr>
    <th>Student name</th>
    <th>Course</th>
    <th>Feedback</th>
    <th>Comment</th>
  </tr>
  <tr>
    <td><?php echo $_GET["name"]; ?></td>
    <td><?php echo $_GET["courses"]; ?></td>
    <?php
    switch ($_GET["feedback"])
    {
    case 1:
    echo '<td style="background: red;">Course evalution: Poor </td>';
    break;

    case 2:
    echo '<td style="background: purple;">Course evalution: Fair </td>';
    break;

    case 3:
    echo '<td style="background: green;">Course evalution: Good </td>';
    break;

    case 4:
    echo '<td style="background: orange;">Course evalution: Excellent </td>';
    break;
    }
    ?>
    <td><?php echo $_GET["comment"] ?></td>
  </table>
  
  <a href="Assignment 8-2.html">Back</a>
</body>
</html>