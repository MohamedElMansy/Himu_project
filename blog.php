<?php 

$sql="SELECT * FROM `section` WHERE `name`='blog'";
$result1=mysqli_query($conn,$sql);



$sql2="SELECT blog.title as 'title',blog.description as 'description',blog.img as 'img',blog.team_id as 'team_id' ,blog.blog_date as 'date',team.name as 'team_name',team.id FROM `blog` , team where team.id=blog.team_id";
$result2=mysqli_query($conn,$sql2);

?>

						<section id="blog"> 
						<div class="container">
							<div class="row text-center clearfix">
								<div class="col-sm-8 col-sm-offset-2">
									<?php foreach ($result1 as $key => $value) { ?>
										
									
									<h2 class="title-one"><?php echo $value['title']; ?></h2>
									<p class="blog-heading"><?php echo $value['description']; ?></p>
									<?php } ?>
								</div>
							</div> 
							<div class="row">



								
									
								

								<?php foreach ($result2 as $key => $value) { ?>
								<div class="col-sm-4">

									<div class="single-blog">
										<img src="images/blog/<?php echo $value['img'] ?>" alt="" />
										<h2><?php echo $value['title'] ?></h2>
										<ul class="post-meta">
											<li><i class="fa fa-pencil-square-o"></i><strong> Posted By:</strong> <?php echo $value['team_name'] ?></li>
											<li><i class="fa fa-clock-o"></i><strong> Posted On:</strong> <?php echo $value['date'] ?></li>
										</ul>
										<div class="blog-content">
											<p><?php echo $value['description'] ?></p>
										</div>
										<a href="" class="btn btn-primary" data-toggle="modal" data-target="#<?php echo $value['title']?>">Read More</a>
									</div>
								
									<div class="modal fade" id="<?php echo $value['title']?>" tabindex="-1" role="dialog" aria-hidden="true">
										<div class="modal-dialog">
											<div class="modal-content">
												<div class="modal-body">
													<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
													<img src="images/blog/<?php echo $value['img'] ?>" alt="" />
													<h2><?php echo $value['title'] ?></h2>
													<p><?php echo $value['title'] ?></p><p><?php echo $value['description'] ?></p>
												</div> 
											</div>
										</div>
									</div>
									
								</div>
								<?php } ?>
								</div> 
							</div> 
						</section>