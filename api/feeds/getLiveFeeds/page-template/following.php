<?php 
/*
* Template Name: following Page Template
*/
get_header('main');
$users = new users();
$Pins = new Pins();
$user = wp_get_current_user();
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
<div class="updated-temp page-wraspper">
	<div class="profile-wrapper">
		<div class="profile-header follower-container">
			<div class="container-fluid">
				<div class="followers">	
					<div class="user-avatar">
						<div class="avatar-section">
							<figure>
								<figcaption style="background-image: url('<?php echo $users->viewUserDetails($users1->ID , "Image"); ?>');"></figcaption>
							</figure>
						</div>
					</div>
					<div class="folloers-cout"><h3><?php echo $users->viewUserDetails($users1->ID , "Name"); ?> Following <span><?php echo $users->followingCount($users1->ID , 'following_user_id') ?></span></h3></div>
				</div>
			</div>
		</div>

		<div class="contant-area">
			<div class="section-area lgray">
				<div class="container-fluid">
					<div class="followlers-list">
						<?php echo $users->followList($users1->ID , "user_id"); ?>
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