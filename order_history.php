<?php include 'header.php'; ?>
<?php 
$uid = $_SESSION["uid"];
var_dump($_POST);
$array = $_POST['carts_product_ids'];;
var_dump($array);
$sql = "SELECT *  FROM `cart` WHERE `id` IN (".implode(',',$array).") AND user_id='$uid'";
$statement=mysqli_query($con,$sql);

if ($statement) {
	?>
	 <div style="margin: 150px;">
                
                  <div class="bg-success">
							  <h1>Your Order History!!</h1>
							 <table class="table table-striped">
                                                	 	<thead>
                                                	 		<td>ID</td>
                                                	 		<td>Image</td>
                                                	 		<td>Product</td>
                                                	 		<td>QTY</td>
                                                	 		<td>Unit Price</td>
                                                	 		<td>Total</td>
                                                	 	</thead>

							</div>
					</div>
	<?php  
	while ($row=mysqli_fetch_assoc($statement)) {
		// var_dump($row);
		// echo $row['p_id'].'</br>';
		?>
		 <tbody>
                      	<input type="hidden" name="cart_product_id[]" id="cart_product_id" value="<?php echo $row['id']; ?>">
                      	<tr>

                      <!-- 		<td><?php echo $i; ?></td> -->
                      		<td><label for=""><?php echo $row['p_id']; ?></label></td>
                      		<td><img src='product_images/<?php echo $row['product_image']; ?>' width='50px' height='60'></td>
                      		<td><label for=""><?php echo $row['product_title']; ?></label></td>
                      		<td><label for=""><?php echo $row['qty']; ?></label></td>
                      		<td><label for=""><?php echo $row['price']; ?></label></td>
                      		<td><label for=""><?php echo $row['total_amt']; ?></label></td>
                                                            
                         </tr>
                      </tbody>
		<?php  
	}
}
 ?>
	
</body>
</html>



















