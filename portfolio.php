<?php


$sql="SELECT * FROM `section` WHERE name ='PORTFOLIO'";
$portfolio=$conn->query($sql);

$sql2="SELECT * FROM `portofolio_catg`";
$port_cat=$conn->query($sql2);

$sql3="SELECT * FROM `categ_project`";
$categ_project=$conn->query($sql3);
	


?>
		<section id="portfolio">
			<div class="container">
				<div class="row text-center">
					<div class="col-sm-8 col-sm-offset-2">
						<?php foreach ($portfolio as $key => $value) { ?>
							
						
						<h2 class="title-one"><?php echo $value['title'] ?></h2>
						<p><?php echo $value['description'] ?></p>
						<?php } ?>
					</div>
				</div>
				<ul class="portfolio-filter text-center">
					<li><a class="btn btn-default active" href="#" data-filter="*">All</a></li>
					<?php foreach ($port_cat as $key => $value) { ?>
						
					
					<li><a class="btn btn-default" href="#" data-filter=".<?php echo $value['id'] ?>"><?php echo $value['name'] ?></a></li>
					<?php } ?>
					
				<div class="portfolio-items">
					<?php foreach ($categ_project as $key => $value) { ?>
						
					
					<div class="col-sm-3 col-xs-12 portfolio-item <?php echo $value['portofolio_id'] ?>">
						<div class="view efffect">
							<div class="portfolio-image">
								<img src="images/portfolio/<?php echo $value['img'] ?>" alt=""></div> 
								<div class="mask text-center">
									<h3><?php echo $value['name'] ?></h3>
									<h4><?php echo $value['description'] ?></h4>
									<a href="#"><i class="fa fa-link"></i></a>
									<a href="images/portfolio/<?php echo $value['img'] ?>" data-gallery="prettyPhoto"><i class="fa fa-search-plus"></i></a>
								</div>
							</div>
						</div>
					<?php } ?>	
				</div>
			</div> 

		</section>