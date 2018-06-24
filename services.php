<?php 

$sql="SELECT * FROM `section` WHERE `name`='services'";
$services=$conn->query($sql);

$sql2="SELECT * FROM `service`";
$services2=$conn->query($sql2);


?>


	<section id="services" class="parallax-section">
		<div class="container">
			<div class="row text-center">
				<div class="col-sm-8 col-sm-offset-2">
					<?php foreach ($services as $key => $value) { ?>
					
					
					<h2 class="title-one"><?php echo $value['title']; ?></h2>
					<p><?php echo $value['description']; ?></p>
					<?php } ?>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-12">
					<div class="our-service">
						<div class="services row">
							<?php foreach ($services2 as $key => $value) { ?>
							<div class="col-sm-4">

								<div class="single-service">

									
									<i class="fa <?php echo $value['icon'] ?>"></i>
									<h2><?php echo $value['name'] ?></h2>
									<p><?php echo $value['description'] ?></p>
									
								</div>
								
								
							</div>
							<?php } ?>
						</div>
						</div>
					</div>
				</div>
			</div>
		</section>
