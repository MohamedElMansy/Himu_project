	<?php
	$sql="SELECT * FROM `slider`";
	$result=$conn->query($sql);

	 ?>

	<section id="home">
		<div class="home-pattern"></div>
		<div id="main-carousel" class="carousel slide" data-ride="carousel"> 
			<ol class="carousel-indicators">
				<li data-target="#main-carousel" data-slide-to="0" class="active"></li>
				<li data-target="#main-carousel" data-slide-to="1"></li>
				<li data-target="#main-carousel" data-slide-to="2"></li>
			</ol><!--/.carousel-indicators--> 
			<div class="carousel-inner">
				
				<?php foreach ($result as $key => $value) { ?>
					
				
				<div class="item <?php if($key == 0){echo "active";} ?>" style="background-image: url(images/slider/<?php echo $value['img'] ?>)"> 
					<div class="carousel-caption"> 
						<div> 
							<h2 class="heading animated bounceInDown"><?php echo $value['title'] ?></h2> 
							<p class="animated bounceInUp"><?php echo $value['description'] ?></p> 
							<a class="btn btn-default slider-btn animated fadeIn" href="#">Get Started</a> 
						</div> 
					</div> 
				</div>
				<?php } ?>
		</div><!--/.carousel-inner-->

		<a class="carousel-left member-carousel-control hidden-xs" href="#main-carousel" data-slide="prev"><i class="fa fa-angle-left"></i></a>
		<a class="carousel-right member-carousel-control hidden-xs" href="#main-carousel" data-slide="next"><i class="fa fa-angle-right"></i></a>
	</div> 

</section>
