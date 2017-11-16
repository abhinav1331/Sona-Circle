<?php 
/*
* Template Name: My Profile Page Template
*/
get_header('main');
$users = new users();
$Pins = new Pins();
$user = wp_get_current_user();
$myPublicblyst = $users->userBlystFunction($user->ID , 1);
$myPrivateblyst = $users->userBlystFunction($user->ID , 0);
/*echo "<pre>";
	print_r($myPublicblyst);
echo "</pre>";*/
 ?>

<div class="profile-temp page-wraspper">
	<div class="profile-wrapper">
		<div class="profile-header">
			<div class="container-fluid">
				<div class="avatar-section">
					<figure>
						<figcaption style="background-image: url('<?php echo $users->viewUserDetails($user->ID , "Image"); ?>');"></figcaption>
						<fieldset>
							<legend><?php echo $users->viewUserDetails($user->ID , "Name"); ?></legend>
						</fieldset>
					</figure>
				</div>

				<div class="tab-target">
					<ul>
						<li><a href="<?php echo esc_url( get_permalink(18) ); ?>" data-tab="blysts">Blysts</a></li>
						<li class=""><a href="<?php echo esc_url( get_permalink(21) ); ?>" data-tab="blystboards">BlystBoards</a></li>
						<li><a href="<?php echo esc_url( get_permalink(25) ); ?>/?username=<?php echo $user->data->user_login; ?>" data-tab="followers"><?php echo $users->followingCount($user->ID , 'user_id') ?> Followers</a></li>
						<li><a href="<?php echo esc_url( get_permalink(27) ); ?>/?username=<?php echo $user->data->user_login; ?>" data-tab="following"><?php echo $users->followingCount($user->ID , 'following_user_id') ?> Following</a></li>
					</ul>
				</div>
			</div>
		</div>

		<div class="contant-area">
			<div class="section-area lgray">
				<div class="container-fluid">
					<div class="section-title"><h3>Public Blysts</h3></div>
					<div class="tab-section post-gallery">
						<div class="post-list grid">
							<div class="grid-item post-wrapper create">
								<div class="postWprr">
									<div class="post">
										<div class="add-bord">
											<span>
												<svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="37px" height="37px" viewBox="5.498 2.397 20.004 20.005" enable-background="new 5.498 2.397 20.004 20.005" xml:space="preserve">
													<path fill="#8fcc93" d="M24.453,10.197h-6.75v-6.75c0-0.58-0.47-1.049-1.049-1.049h-2.308c-0.58,0-1.049,0.47-1.049,1.049v6.75h-6.75 c-0.58,0-1.049,0.47-1.049,1.049v2.308c0,0.58,0.47,1.049,1.049,1.049h6.75v6.75c0,0.579,0.47,1.049,1.049,1.049h2.309 c0.579,0,1.049-0.47,1.049-1.049v-6.75h6.75c0.579,0,1.049-0.47,1.049-1.049v-2.308C25.502,10.667,25.033,10.197,24.453,10.197z"></path>
												</svg>
											</span>

											<h3>Create New Blyst</h3>
										</div>
									</div>
								</div>
							</div>
							<?php foreach ($myPublicblyst as $key => $value): ?>
								<div class="grid-item post-wrapper">
									<div class="post">
										<figure class="post-tumb" style="background-image: url('<?php echo $value->attachment; ?>');"></figure>
										<div class="post-details">
											<div class="post-header">
												<a href="#"><span>10</span><h3><?php echo $value->name; ?></h3></a>
											</div>

											<div class="post-info">
												<div class="avatar">
													<figure style="background-image: url('<?php echo $users->viewUserDetails($user->ID , "Image"); ?>');"></figure>
												</div>
												<div class="post-arthur">
													<h4><?php echo $users->viewUserDetails($user->ID , "Name"); ?></h4>
													<h5><?php echo $value->category_name; ?></h5>
												</div>
											</div>
											<div class="liks">
												<div class="counter">
													<a href="javascript:void(0)" onclick="likeTheBlyst(<?php echo $value->id ?>,this)" class="<?php if($Pins->currentUserLikked($value->id) == 1) { echo "active"; } ?>"><i class="fa fa-heart"></i> <span><?php echo $Pins->getPinsLike($value->id) ?></span></a>
												</div>
											</div>
											<a href="javascript:void(0)" class="edit" onclick="getMyBlyst('<?php echo $value->id; ?>');" >Edit Blyst</a>
										</div>
									</div>
								</div>
							<?php endforeach ?>
						</div>
					</div>
				</div>
			</div>
			<div class="section-area">
				<div class="container-fluid">
					<div class="section-title">
						<h3>Private Blysts</h3>
						<span>
							<svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="100%" viewBox="0 0 303.973 446.827" enable-background="new 0 0 303.973 446.827" xml:space="preserve">
								<g transform="translate(-196.111,-458.2693)">
									<path fill="#6D6E72" d="M348.056,458.269c-68.807,0-125.004,55.989-125.004,125.004v55.503c-3.273,0.744-6.598,1.316-9.871,2.104 c-10.066,2.442-17.071,11.65-17.071,22.006v197.902c0,9.61,6.056,18.375,15.21,21.441c91.218,30.488,182.375,30.488,273.552,0 c9.114-3.066,15.211-11.831,15.211-21.441V662.886c-0.039-10.314-7.047-19.604-17.072-22.006c-3.313-0.828-6.637-1.36-9.951-2.104 v-55.503C473.06,514.259,417.071,458.269,348.056,458.269L348.056,458.269z M348.056,511.75c39.438,0,71.443,32.128,71.443,71.523 v46.037c-47.64-6.09-95.285-6.09-142.967,0v-46.037C276.533,543.878,308.662,511.75,348.056,511.75L348.056,511.75z M348.127,710.056c16.529,0,30.018,13.366,30.018,29.937c0,9.527-4.571,17.995-11.489,23.463l7.606,63.675h-52.349l7.685-63.675 c-6.959-5.468-11.487-13.894-11.487-23.463C318.11,723.465,331.556,710.056,348.127,710.056L348.127,710.056z"></path>
								</g>
							</svg>
						</span>
						<p>Only you can view these Blysts</p>
					</div>
					<div class="tab-section post-gallery">
						<div class="post-list grid">
							<?php foreach ($myPrivateblyst as $key => $value): ?>
								<div class="grid-item post-wrapper">
									<div class="post">
										<div class="lock">
											<svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="100%" viewBox="0 0 303.973 446.827" enable-background="new 0 0 303.973 446.827" xml:space="preserve">
												<g transform="translate(-196.111,-458.2693)">
													<path fill="#ffffff" d="M348.056,458.269c-68.807,0-125.004,55.989-125.004,125.004v55.503c-3.273,0.744-6.598,1.316-9.871,2.104 c-10.066,2.442-17.071,11.65-17.071,22.006v197.902c0,9.61,6.056,18.375,15.21,21.441c91.218,30.488,182.375,30.488,273.552,0 c9.114-3.066,15.211-11.831,15.211-21.441V662.886c-0.039-10.314-7.047-19.604-17.072-22.006c-3.313-0.828-6.637-1.36-9.951-2.104 v-55.503C473.06,514.259,417.071,458.269,348.056,458.269L348.056,458.269z M348.056,511.75c39.438,0,71.443,32.128,71.443,71.523 v46.037c-47.64-6.09-95.285-6.09-142.967,0v-46.037C276.533,543.878,308.662,511.75,348.056,511.75L348.056,511.75z M348.127,710.056c16.529,0,30.018,13.366,30.018,29.937c0,9.527-4.571,17.995-11.489,23.463l7.606,63.675h-52.349l7.685-63.675 c-6.959-5.468-11.487-13.894-11.487-23.463C318.11,723.465,331.556,710.056,348.127,710.056L348.127,710.056z"></path>
												</g>
											</svg>
										</div>
										<figure class="post-tumb" style="background-image: url('<?php echo $value->attachment; ?>');"></figure>
										<div class="post-details">
											<div class="post-header">
												<a href="#"><span>10</span><h3><?php echo $value->name; ?></h3></a>
											</div>

											<div class="post-info">
												<div class="avatar">
													<figure style="background-image: url('<?php echo $users->viewUserDetails($user->ID , "Image"); ?>');"></figure>
												</div>
												<div class="post-arthur">
													<h4><?php echo $users->viewUserDetails($user->ID , "Name"); ?></h4>
													<h5><?php echo $value->category_name; ?></h5>
												</div>
											</div>
											<div class="liks">
												<div class="counter">
													<a href="javascript:void(0)" onclick="likeTheBlyst(<?php echo $value->id ?>,this)" class="<?php if($Pins->currentUserLikked($value->id) == 1) { echo "active"; } ?>"><i class="fa fa-heart"></i> <span><?php echo $Pins->getPinsLike($value->id) ?></span></a>
												</div>
											</div>
											<a href="javascript:void(0)" class="edit" data-toggle="modal" data-target="#editBlysty" >Edit Blyst</a>
										</div>
									</div>
								</div>
							<?php endforeach ?>						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<?php 
	get_footer('main');
?>