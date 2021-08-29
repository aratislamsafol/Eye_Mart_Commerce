<?php include 'header.php'; ?>
<?php

// session_start();
if(!isset($_SESSION["uid"])){
	header("location:index.php");
}
?>
<?php 
// var_dump($_GET);
if (isset($_GET['p_id'])) {
	$p_id=$_GET['p_id'];

$sql = "SELECT *  FROM `products` 
INNER JOIN categories ON products.product_cat=categories.cat_id 
INNER JOIN brands ON products.product_brand=brands.brand_id
WHERE  product_id='$p_id'";
$statement=mysqli_query($con,$sql);

}

if ($statement) {
	$row=mysqli_fetch_assoc($statement);
	?>
	 <div style="margin: 50px;">
                
                  <div class="bg-success">
							  

				</div>
<div class="container">
  <h2><?php echo $row['product_title']; ?></h2>


    <div class="row">
    	<div style="max-width: 100%;">
    	 <img src='product_images/<?php echo $row['product_image']; ?>' width='50%' height='60%'>	


    	</div>
    	<div style="max-width: 50%;font-size: 25px;">
    		Tags: <small> <?php 	echo $row['product_keywords']; ?>	</small> <br>	
    		Price: <b>	 <?php 	echo $row['product_price']; ?></b>	<br>
    	    Category: <b>	<?php 	echo $row['cat_title']; ?></b>	<br>
    	     Brand: <b>	<?php 	echo $row['brand_title']; ?></b>	<br>
    	     Description: <b>	<?php 	echo $row['product_desc']; ?></b>	<br>
    	     <a href="profile.php">Back</a>


    	</div>
  
   
</div>
</div>
							 
<?php } ?>
	
</body>
</html>















































