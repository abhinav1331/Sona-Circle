<?php 
include('../../../../wp-config.php');
global $wpdb;
$description = $_POST['description'];
$attachmentId = $_POST['attachmentId'];
$currentUser = wp_get_current_user();
$cUserid = $currentUser->ID;
$time = time();
$wpdb->insert( 'im_feeds', array(
		'user_id' => $cUserid,
		'description' => $description,
		'image_url' => $attachmentId,
		'status' => 1,
		'post_created' => $time )
		);
?>