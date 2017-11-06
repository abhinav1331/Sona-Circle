<?php
/**
 * The template for displaying 404 pages (not found)
 *
 * @link https://codex.wordpress.org/Creating_an_Error_404_Page
 *
 * @package WordPress
 * @subpackage Twenty_Seventeen
 * @since 1.0
 * @version 1.0
 */

get_header(); ?>

<?php 
/*
* Template Name: Verify Account
*/
$myString = base64_decode(key($_GET));
$Arr = explode("=" , $myString);

$user = get_user_by( 'email', $Arr[1] );

$userStatus = get_user_meta($user->ID , "userStatus" , true);
if($userStatus == 0) {
	"User Successfully Activated";
	update_user_meta( $user->ID, "userStatus", 1); ?>
	<section class="thank-you-page">
  <div class="container">
      
      <i class="fa fa-handshake-o" aria-hidden="true"></i>
    <div class="clearfix"></div>
      <h3>Thank you</h3>
      <p>Your account has been subscribed..!!</p>
  </div>
</section>
	<?php
} else {
	 global $wp_query;
	  $wp_query->set_404();
	  status_header( 404 );
	  get_template_part( 404 ); exit();
}
?>

