<?php
error_reporting(0);
session_start();
if(!isset($_SESSION["uid"])){
	header("location:index.php");
}
?>
<?php include'header.php'; ?>
	<div class="container-fluid" style="margin-top: 10px; background-image: url('bg.JPG');">
		<div class="row">
			<div class="col-md-1"></div>
			<!-- Category -->
			<!-- <div class="col-md-3">
				<div id="get_category">
				</div>
				<div id="get_brand">
				</div>
			</div> -->
			<!-- category -->
			<div class="col-md-12" style=" background-image: url('bg.JPG');">	
				<div class="row">
					<div class="col-md-12 col-xs-12" id="product_msg">
					</div>
				</div>
				<div class="panel panel-info" id="scroll">
					<div class="panel-heading">Products</div>
					<div class="panel-body">
						<div id="get_product">
							<!--Here we get product jquery Ajax Request-->
						</div>
						<!--<div class="col-md-4">
							<div class="panel panel-info">
								<div class="panel-heading">Samsung Galaxy</div>
								<div class="panel-body">
									<img src="product_images/images.JPG"/>
								</div>
								<div class="panel-heading">$.500.00
									<button style="float:right;" class="btn btn-danger btn-xs">AddToCart</button>
								</div>
							</div>
						</div> -->
					</div>
					<div class="panel-footer">&copy; 2019</div>
				</div>
			</div>
			<div class="col-md-1"></div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<center>
					<ul class="pagination" id="pageno">
						<li><a href="#">1</a></li>
					</ul>
				</center>
			</div>
		</div>
	</div>
</body>
</html>
















































