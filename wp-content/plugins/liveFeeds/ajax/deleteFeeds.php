<?php 
include("../../../../wp-config.php");
global $wpdb;
$deleteFeedID = $_POST['event'];
$wpdb->query("DELETE FROM `im_feeds` WHERE `id` = $deleteFeedID");
