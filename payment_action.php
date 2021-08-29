<?php include 'header.php'; ?>
<?php 

if (isset($_POST['payment_submit'])) {
	// var_dump($_POST);
	// var_dump($_POST['cart_product_id']);
if (!empty($_POST['cart_product_id'])) {


// var_dump($_POST);
	$uid = $_SESSION["uid"];
$address = $_POST['address_line_1'] .",". $_POST['city'].",". $_POST['state'].",".$_POST['postalcode'];
$payment_info = $_POST['card_holder'] . "," . $_POST['card_number'];


$carts_product_ids=$_POST['cart_product_id'];
$total_product=count($carts_product_ids);

// var_dump($total_product);
$address_line_1=$_POST['address_line_1'];
$phone=$_POST['phone'];

$colums = implode(", ",array_keys($carts_product_ids));
// $escaped_values = array_map('mysqli_real_escape_string ', array_values($carts_product_ids));
$values  = implode(", ", $carts_product_ids);
// var_dump($values);
// $sql = "INSERT INTO `fbdata`($columns) VALUES ($values)";
$sql = "INSERT INTO `customer_order` 
			(`order_id`, `user_id`, `cart_product_ids`,
			`shipping address`, `mobile_no`,payment_info)
			VALUES (NULL, '$uid', '$values', '$address', '$phone','$payment_info')";
			if(mysqli_query($con,$sql)){
				// echo "Success";
				for ($i=0; $i <$total_product ; $i++) { 
					
					// echo "</br>".$carts_product_ids[$i]."</br>";

					// echo "</br>Posstion 0:".$carts_product_ids[1]."</br>";

		       $sqlUpdate = "UPDATE cart SET status = 1 
	           WHERE id = '$carts_product_ids[$i]' ";
	           $resultUpdate=mysqli_query($con,$sqlUpdate);
				}
				if($resultUpdate){
					// echo "update success";

                ?>
                <!-- html -->
                <div style="margin: 150px;">
                	
                
                  <div class="bg-success">
							  <h1>Success!!</h1>
							  <p>Your Order Successfully Recieved,
							  Our agent will contact with you very soon.</p>
							</div>
					<div class="bg-success">
							  <h1>Success!!</h1>

							  <!-- <form method="post" action="order_history.php">
							  	<input type="hidden" name="carts_product_ids[]" value="<?php echo $carts_product_ids; ?>">
							  	<input type="submit" value="Click to See Order History">
							  </form> -->
							 <!-- <p><a href="order_history.php">Click to See Order History</a></p> -->
					</div>
							<div class="bg-info">
							  <p>Thank you for staying with us</p>
							  <p><a href="profile.php">Back to shopping!</a></p>
							</div>
					</div>
                <!-- html -->
                <?php 
				}
				
			}
			else{
				echo "Error";
			}
		}else{
			echo "<script>
alert('Empty Cart');
window.location.href='profile.php';
</script>";
			echo "Empty";
		}
		}
 ?>