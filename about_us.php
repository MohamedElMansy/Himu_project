<?php

$sql1="SELECT * FROM `section` WHERE `name`= 'about_us'";
$withus=$conn->query($sql1);

$sql2="SELECT * FROM `with_us`";

$aboutus=$conn->query($sql2);

$sql3="SELECT * FROM `skill`";
$skill=$conn->query($sql3);

?>
<section id="about-us">
	<div class="container">
		<div class="text-center">

			<?php foreach ($withus as $key => $value) { ?>
			
			<div class="col-sm-8 col-sm-offset-2">
				<h2 class="title-one"> <?php echo $value['title'] ?></h2>
				<p><?php echo $value['description'] ?></p>
			</div>
			
			<?php } ?>
		</div>
		<div class="about-us">
			<div class="row">
				<div class="col-sm-6">

					<h3>Why with us?</h3>
					<ul class="nav nav-tabs">
					<?php foreach ($aboutus as $key => $value) { ?>

				
						<li class="<?php if($key==0){echo "active";} ?>"><a href="#<?php echo $value['id'] ?>" data-toggle="tab"><i class="fa fa-chain-broken"></i><?php echo $value['name'] ?></a></li>
					<?php } ?>	
					</ul>
					
					<div class="tab-content">
						<?php foreach ($aboutus as $key => $value) { ?>
							
					
						<div class="tab-pane fade in <?php if($key == 0){echo "active";} ?>" id="<?php echo $value['id']; ?>">
							<div class="media">
								<img class="pull-left media-object" src="images/about-us/<?php echo $value['img']; ?>" alt="about us"> 
								<div class="media-body">
									<p><?php echo $value['description']; ?></p>
								</div>
							</div>
						</div>

						<?php } ?>
					
					</div>
				</div>
				<div class="col-sm-6">
					<h3>Our Skills</h3>
					<div class="skill-bar">
						<?php foreach ($skill as $key => $value) { ?>
							
						
						<div class="skillbar clearfix " data-percent="<?php echo $value['value']; ?>%">
							<div class="skillbar-title">
								<span><?php echo $value['name']; ?></span>
							</div>
							<div class="skillbar-bar"></div>
							<div class="skill-bar-percent"><?php echo $value['value']; ?>%</div>
						</div> <!-- End Skill Bar -->
						<?php } ?>
					</div>
				</div>
			</div>
		</div>
	</section>