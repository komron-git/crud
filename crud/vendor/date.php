<?php
  require_once '../connect.php';

  $product_id = $_GET['id'];
  $product = mysqli_query($connect,"SELECT * FROM `products` WHERE `id` = '$product_id'");
  $product = mysqli_fetch_assoc($product);
    
  
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    
    <title>Update Product</title>

</head>
<body>

<h3>Last Date</h3>
         <input type="hidden" name="id" value="<?=$product['id'] ?>">    
     <p>Add</p>
     <input type="text" name="last_add" value="<?= $product['last_add'] ?>">
     <p>Edit</p>
     <input type="text" name="last_edit" value="<?=$product['last_edit'] ?>"> <br> <br>
    </form>
    
</body>
</html>