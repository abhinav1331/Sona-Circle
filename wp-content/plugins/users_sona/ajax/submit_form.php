<?php 
session_start();
$image_url = $_POST['image_url'];
include('../../../../wp-config.php');
global $wpdb;
	$post_id = $wpdb->insert( 'im_upload_file', array(
		'url' => $image_url)
		);
		print_r($post_id);
		$_SESSION['post_id_file'] = $image_url;