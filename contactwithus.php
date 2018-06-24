<?php 

require('database.php');


$sql="SELECT * FROM `section` WHERE `name`='contact_with_us'";
$result=mysqli_query($conn,$sql);

$sql2="SELECT * FROM `about_company`";
$result2=mysqli_query($conn,$sql2);

foreach ($result2 as $key => $value) {

	$company_id=$value['id'];



$sql3="SELECT * FROM `company_link`,social_media WHERE company_link.social_media_id=social_media.id and company_link.about_company_id = '$company_id' ";
$links=mysqli_query($conn,$sql3);

$company_with_links[]=array("id" => $value['id'], "description" => $value['description'],"address" => $value['address'],"area" => $value['area'],"country" => $value['country'],"fname" => $value['fname'],"lname" => $value['lname'],'links'=>$links);

}


?>

<section id="contact">
							<div class="container">
								<div class="row text-center clearfix">
									<div class="col-sm-8 col-sm-offset-2">
										<div class="contact-heading">
											<?php foreach ($result as $key => $value) { ?>
												
											
											<h2 class="title-one"><?php echo $value['title'] ?></h2>
											<p><?php echo $value['description'] ?></p>
											<?php } ?>
										</div>
									</div>
								</div>
							</div>
							
							<div class="container">
								<div class="contact-details">
									<div class="pattern"></div>
									<div class="row text-center clearfix">
										<div class="col-sm-6">
											<?php foreach ($company_with_links as $key => $value) { ?>
											
											
											<div class="contact-address"><address><p><span><?php echo $value['fname'];?></span><?php echo $value['lname'];?></p><strong><?php echo $value['address'];?><br><?php echo $value['area'];?><br><?php echo $value['country'];?></strong><br><small>(<?php echo $value['description'];?> )</small></address>
												<div class="social-icons">
													<?php foreach ( $value['links'] as $key => $row) { ?>
														
												
													
													<a href="<?php echo $row['links'] ?>"><i class="fa <?php echo $row['icon'] ?>"></i></a>
													
													<?php	} ?>
												</div>
											</div>
											<?php } ?>
										</div>
										<div class="col-sm-6"> 
											<div id="contact-form-section">
												<div class="status1 alert alert-success" style="display: none">success</div>
												
												<form id="contact-form" class="contact" name="contact-form" method="post" action="#">
													<div class="form-group">
														<input  id="name" type="text" name="name" class="form-control name-field" required="required" placeholder="Your Name"></div>
														<div class="form-group">
															<input id="email" type="email" name="email" class="form-control mail-field" required="required" placeholder="Your Email">
														</div> 
														<div class="form-group">
															<textarea name="message" id="message" required="required" class="form-control" rows="8" placeholder="Message"></textarea>
														</div> 
														<div class="form-group">
															<button id="send_message" type="submit" class="btn btn-primary">Send</button>
														</div>
													</form> 
												</div>
											</div>
										</div>
									</div>
								</div> 
							</section> 

							


	<script type="text/javascript" src="js/jquery.js"></script> 
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/smoothscroll.js"></script> 
	<script type="text/javascript" src="js/jquery.isotope.min.js"></script>
	<script type="text/javascript" src="js/jquery.prettyPhoto.js"></script> 
	<script type="text/javascript" src="js/jquery.parallax.js"></script> 
	<script type="text/javascript" src="js/main.js"></script> 
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script type="text/javascript">
		
		  $(document).on("click","#send_message", function (e) {
		    var name =$('#name').val();
		    var email =$('#email').val();
		    var message =$('#message').val();

		    $.ajax({ type: 'POST', 
                     url: "message.php",
                     data: {name :name ,email:email, message:message}
                  }).done(function (data) {
                  	if(data=="success"){
                  		  $('.status1').attr('style','display: block');
                  		   $('.status1').html("success");
                  		   // $('.fo').resetForm();
                  		   
                  		   $('.fo')[0].reset();


                  	}
                  	else
                  	{
                  		 $('.status1').attr('style','display: block');
                  		   $('.status1').html("failed");
                  	}
		               
		             });
		                
		            
                   e.preventDefault();
              });

</script>