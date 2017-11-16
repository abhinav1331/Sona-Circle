<?php 
/*
* Template Name: View Profile Page Template
*/
get_header('main');
$users = new users();
$Pins = new Pins();
$getCurrentUser = $_GET['username'];
$users1 = get_userdatabylogin( $getCurrentUser );

if(empty($users) || !isset($_GET['username'])) {
	global $wp_query;
	$wp_query->set_404();
	status_header( 404 );
	get_template_part( 404 );
	 exit();
} else {

 ?>
<div class="modified-temp page-wraspper">
	<div class="profile-wrapper">
		<div class="profile-header">
			<div class="container-fluid">
				<div class="avatar-section">
					<figure>
						<figcaption style="background-image: url('<?php echo $users->viewUserDetails($users1->ID , "Image"); ?>');"></figcaption>
						<fieldset>
							<legend><?php echo $users->viewUserDetails($users1->ID , "Name"); ?></legend>
						</fieldset>
					</figure>
				</div>

				<div class="tab-target">
					<ul>
						<li><a href="<?php echo esc_url( get_permalink(25) ); ?>&username=<?php echo $getCurrentUser ?>" data-tab="followers" class="myFollowersCount"><?php echo $users->followingCount($users1->ID , 'following_user_id') ?> Followers</a></li>
						<li><a href="<?php echo esc_url( get_permalink(27) ); ?>&username=<?php echo $getCurrentUser ?>" data-tab="following"><?php echo $users->followingCount($users1->ID , 'user_id') ?> Following</a></li>
					</ul>
				</div>
				<?php if ($users->UserFollowStatus($users1->ID) != 2): ?>
				<div class="follow-btn">
					<a href="javascript:void(0)" <?php if($users->UserFollowStatus($users1->ID) != "Following") { ?> onclick="followTheUser('<?php echo $users1->ID; ?>' , this);" <?php } ?> class="costom-btn green-btn"><?php echo $users->UserFollowStatus($users1->ID); ?> <?php echo $users->viewUserDetails($users1->ID , "Name"); ?></a>
				</div>
				<?php endif ?>
			</div>
		</div>

		<div class="contant-area">
			<div class="section-area lgray">
				<div class="container-fluid">
					<div class="blystboards-section post-gallery">
						<div class="post-gallery-wrapper">
							<div class="post-list">
								<?php $getMyBlystBoard = $Pins->getMyBlystBoard($users1->ID , 1); ?>
							</div>
						</div>
						<div class="gallery-controls">
							<a href="javascript:void(0)" class="gallery-control prv">
								<span>
									<i class="fa fa-angle-left"></i>
								</span>
							</a>
							<a href="javascript:void(0)" class="gallery-control nxt">
								<span>
									<i class="fa fa-angle-right"></i>
								</span>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
 <?php
}
	get_footer('main');
?>