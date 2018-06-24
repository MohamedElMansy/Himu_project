<?php 

$sql="SELECT * FROM `section` WHERE name ='team'";
$team=$conn->query($sql);

$sql2="SELECT * FROM `team`";
$team_members=$conn->query($sql2);

foreach ($team_members as $key => $value) {
	$team_id=$value['id'];
	
	$sql3="SELECT * FROM social_media,team_link WHERE social_media.id=team_link.social_media_id AND team_link.team_id = $team_id";
	
	$links=$conn->query($sql3);

	$team_links[]=array('id'=>$value['id'],'img'=>$value['img'],'name'=>$value['name'],'description'=>$value['description'],'position'=>$value['position'],'links'=>$links);
}


?>
		<section id="our-team">
			<div class="container">
				<div class="row text-center">
					<div class="col-sm-8 col-sm-offset-2">
						<?php foreach ($team as $key => $value) { ?>
							
						
						<h2 class="title-one"><?php echo $value['title']; ?></h2>
						<p><?php echo $value['description']; ?></p>
						<?php } ?>
					</div>
				</div>
				<div id="team-carousel" class="carousel slide" data-interval="false">
					<a class="member-left" href="#team-carousel" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
					<a class="member-right" href="#team-carousel" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
					

					
					<div class="carousel-inner team-members">

								<?php foreach ($team_links as $key => $value) { ?>
								
								<?php if (($key%4)==0) { ?>

								<div class="row item <?php if($key==0){echo 'active';} ?>">
								<?php } ?>
								<div class="col-sm-6 col-md-3">
									
									<div class="single-member">
										
											<img src="images/our-team/<?php echo $value['img'] ;?>" alt="team member" />
											<h4><?php echo $value['name'] ;?></h4>
											<h5><?php echo $value['position'] ;?></h5>
											<p><?php echo $value['description'] ;?></p>
											<div class="socials">
												<?php foreach ( $value['links'] as $key => $row) { ?>
													
												
												<a href="<?php echo $row['links'] ?>"><i class="fa <?php echo $row['icon'] ?>"></i></a>
												<?php } ?>
											</div>
									</div>

								</div>
								
								
								<?php if ((($key+1)%4)==0) { ?>
							</div>
								<?php } } ?>

					
						</div>
					</div>
				</div>
			</div>
		</section>