<?php 
include("../../../../wp-config.php");
global $wpdb;
$deleteFeedID = $_POST['feedID'];
$wpdb->query("DELETE FROM `im_feeds_spam` WHERE `feed_id` = $deleteFeedID");