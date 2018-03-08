<!DOCTYPE html>
<html>
<body>
  <table border="1px">
  <tr>
    <th>Product</th>
    <th>Unit price</th>
    <th>Amount</th>
    <th>Total value</th>
  </tr>
  <tr>
    <td><?php echo $_GET["product"] ?></td>
    <td><?php echo $_GET["price"] ?></td>
    <td><?php echo $_GET["amount"] ?></td>
    <td><?php echo $_GET["price"]*$_GET["amount"] ?></td>
  </tr>
    
  </table>
  <a href="Assignment 8-1.html">Back</a>
</body>
</html>