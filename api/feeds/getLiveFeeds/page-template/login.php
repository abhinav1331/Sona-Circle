<?php 
session_start();
/*
* Template Name: Login Page Template
*/
get_header();

require_once ABSPATH.'facebook/autoload.php';
  $fb = new Facebook\Facebook([
  'app_id' => '275645989609691',
  'app_secret' => 'bbd63c295441c6c13a1994457941ce39',
  'default_graph_version' => 'v2.10',
  ]);
  $helper = $fb->getRedirectLoginHelper();
  $permissions = ['email,user_friends']; 
  $loginUrl = $helper->getLoginUrl( site_url().'/fb-callback.php', $permissions);


  //my Work
	$Pins = new Pins();


  //my Work
?>
	<main class="main">
		<div class="login">
			<div class="login-pop">
				<div class="login-wrapper">
					<div class="logincon" data-interval="3" data-target='.grid-item'>
						<div class="boards">
							<div class="boardsWrapper">
								<?php echo $Pins->getRandomPin(4); ?>
							</div>
						</div>
						<div class="loginform">
							<div class="loginformContainer">
								<div class="form">
									<div class="formHeader">
										<span>Welcome to</span>
										<a href="<?php echo site_url(); ?>"><img src="<?php echo esc_url( get_template_directory_uri() ); ?>/assets/images/logo.png" alt="logo"></a>
										<small>Bliss with Lists</small>
									</div>
									<div id="logForm" style="display: block;">
										<div class="login-form">
									 <form role="form" id="loginform" action="" method="post">
											<div class="form-group">
												<input class="form-control" type="text" name="uname"  placeholder="Email">
											</div>
											<div class="form-group">
												<input class="form-control" type="password" name="upass" placeholder="Create a Password">
												<input class="form-control" type="hidden" name="link" value="<?php echo site_url(); ?>">
											</div>

									          <input type="hidden" name="action" value="wpLoginForm" />
									          <?php wp_nonce_field( 'wpLoginForm_html', 'wpLoginForm_nonce' ); ?>

											<input type="submit" class="green-btn coustom-btn" value="Continue" onclick="myLogin();">
									</form>
										</div>

									<span class="or">Or</span>

									<div class="loginWithSocial">
										<a class="coustom-btn fb-btn" href="<?php echo htmlspecialchars($loginUrl) ?>">Continue with Facebook</a>
										<?php include(ABSPATH.'/test/google_login.php'); ?>
										<a class="green-btn coustom-btn" href="#SigForm" style="padding-left: 15px;padding-right: 15px;text-align: center;">Sign Up</a>
									</div>
									</div>
									
									<div id="SigForm" style="display: none;;">
										<div class="login-form">
											 <form role="form" id="registerform" action="" method="post">
												<div class="form-group">
													<input class="form-control" type="text" name="emailA" placeholder="Email Address">
												</div>
												<div class="form-group">
													<input class="form-control" type="text" name="name" placeholder="Name">
												</div>
												<div class="form-group">

										          <input type="hidden" name="action" value="wpjobusRegisterForm" />
										          <?php wp_nonce_field( 'wpjobusRegister_html', 'wpjobusRegister_nonce' ); ?>
													<input class="form-control" type="password" name="pass" placeholder="Create a Password">
												</div>
												
												<input type="submit" class="green-btn coustom-btn" value="Continue" onclick="myReg();">

												<span class="or">Or</span>

												<div class="loginWithSocial">
													<a class="green-btn coustom-btn" href="#logForm" style="padding-left: 15px;padding-right: 15px;text-align: center;">Login</a>
												</div>
											</form>
										</div>
									</div>

								</div>
							</div>
						</div>
					</div>

					<div class="loginfooter">
						<ul> 
							
								<?php
								$defaults = array(
									'theme_location'  => '',
									'menu'            => 'menu-public',
									'container'       => 'menu-public',
									'container_class' => '',
									'container_id'    => '',
									'menu_class'      => 'menu',
									'menu_id'         => '2',
									'echo'            => true,
									'fallback_cb'     => 'wp_page_menu',
									'before'          => '',
									'after'           => '',
									'link_before'     => '',
									'link_after'      => '',
									'items_wrap'      => '%3$s',
									'depth'           => 0,
									'walker'          => ''
								);
								wp_nav_menu( $defaults );
								?>  
						</ul>
					</div>
				</div>
			</div>
		</div>
	</main>
<?php 
get_footer();
?>