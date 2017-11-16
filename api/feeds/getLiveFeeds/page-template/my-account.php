<?php 
session_start();
$users = new users();
$user = wp_get_current_user();

if(isset($_POST['sub'])) {
	$users->myUserUpdateDetails($_POST , $_FILES);
	if(is_user_logged_in()) {
		wp_clear_auth_cookie();
		wp_set_current_user( $user->ID );
		wp_set_auth_cookie( $user->ID );
	}
}

/*
* Template Name: MyAccount Page Template
*/


get_header('main');

?>
<style>
body {
	font-family: Arial, Helvetica, sans-serif;
}

table {
	font-size: 1em;
}

.ui-draggable, .ui-droppable {
	background-position: top;
}
</style>
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
						<li class="active"><a href="<?php echo esc_url( get_permalink(21) ); ?>" data-tab="blystboards">BlystBoards</a></li>
						<li><a href="<?php echo esc_url( get_permalink(25) ); ?>/?username=<?php echo $user->data->user_login; ?>" data-tab="followers"><?php echo $users->followingCount($user->ID , 'user_id') ?> Followers</a></li>
						<li><a href="<?php echo esc_url( get_permalink(27) ); ?>/?username=<?php echo $user->data->user_login; ?>" data-tab="following"><?php echo $users->followingCount($user->ID , 'following_user_id') ?> Following</a></li>
					</ul>
				</div>
			</div>
		</div>

		<div class="contant-area">
			<div class="section-area lgray">
				<div class="container-fluid">
					<form class="account-form" id="my-account" enctype="multipart/form-data" method="post" action="">
						<div class="section-title"><h3>My Account</h3></div>
						<div class="form-group">
							<span class="lab">Email Address</span>
							<label>
								<input class="form-control" type="email" name="emailAddr" placeholder="emma@gmail.com" value="<?php echo $users->viewUserDetails($user->ID , "Email"); ?>" disabled>
							</label>
						</div>
						<div class="form-group">
							<span class="lab">Name</span>
							<label>
								<input class="form-control" type="text" name="nameUser" placeholder="Emma" value="<?php echo $users->viewUserDetails($user->ID , "Name"); ?>">
							</label>
						</div>
						<div class="form-group">
							<span class="lab">Password</span>
							<label>
								<input class="form-control passwordMyAccount" type="password" name="passUser" placeholder="Change my password..." value="<?php echo $users->viewUserDetails($user->ID , "Password"); ?>">
							</label>
						</div>
						<div class="form-group">
							<span class="lab">Picture</span>
							<div class="selectedImage" id="selectedImage" style="background-image: url('<?php echo $users->viewUserDetails($user->ID , "Image"); ?>');"></div>
							<label>
								<input type="file" id="selectImgTarget" class="hide" name="img_file" accept="image/*">
								<input type="button" class="selectImg" value="Change Picture">
							</label>
						</div>
						<div class="more-links">
							<span>More</span>
							<ul>
								<li><a href="#">About Blysty</a></li>
								<li><a href="#">Terms of Service</a></li>
								<li><a href="#">Privacy Policy</a></li>
								<li><a href="#">Deactivation</a></li>
							</ul>
						</div>

						<div class="btns">
							<input class="form-btn green-btn" type="submit" name="sub" value="Save Setting" onclick="myPasswordChange(this);">
							<input class="form-btn red-btn" type="button" name="can" value="Cancel">
						</div>
					</form>
					<!-- <div id="dialog-confirm" title="Empty the recycle bin?">
					  <p>
					  	<span class="ui-icon ui-icon-alert" style="float:left; margin:12px 12px 20px 0;"></span>Change In Password May Logout from the system for security reason.</p>
					</div> -->
				</div>
			</div>
		</div>
	</div>
</div>
<?php 
	get_footer('main');
?>