<?php 
require ('database.php');

$sql="SELECT * FROM `section` WHERE `name`='clients_say'";
$result=mysqli_query($conn,$sql);


$sql2="SELECT * FROM `about_us`";
$res2=mysqli_query($conn,$sql2);


?>



					<section id="clients" class="parallax-section">
						<div class="container">
							<div class="clients-wrapper">
								<div class="row text-center">
									<div class="col-sm-8 col-sm-offset-2">
										<?php foreach ($result as $key => $value) { ?>
											
										
										<h2 class="title-one"><?php echo $value['title'] ?></h2>
										<p><?php echo $value['description'] ?></p>
										<?php } ?>
									</div>
								</div>
								<div id="clients-carousel" class="carousel slide" data-ride="carousel"> <!-- Indicators -->
									<ol class="carousel-indicators">
										<li data-target="#clients-carousel" data-slide-to="0" class="active"></li>
										<li data-target="#clients-carousel" data-slide-to="1"></li>
										<li data-target="#clients-carousel" data-slide-to="2"></li>
									</ol> <!-- Wrapper for slides -->
									<div class="carousel-inner">
										<?php foreach ($res2 as $key => $value) { ?>
											
										
										<div class="item <?php if($key==0){echo'active';} ?>">
											<div class="single-client">
												<div class="media">
													<img class="pull-left" src="images/clients/<?php echo $value['img']; ?>" alt="">
													<div class="media-body">
														<blockquote><p><?php echo $value['description']; ?></p><small><?php echo $value['position']; ?></small><a href=""><?php echo $value['link']; ?></a></blockquote>
													</div>
												</div>
											</div>
										</div>
										<?php } ?>
										
									</div>
								</div>
							</div>
						</div>
					</section>