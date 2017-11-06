<?php
/*
Plugin Name: Live Feeds Sona Circle
Description:
Author: Abhinav Grover
*/

if (is_admin())
{   
  function form_create_live_feeds_section() 
	 {  
	//add_menu_page("Product Import","Product Import",1,"product_import","");
	
	add_menu_page("Live Feeds","Live Feeds",1,"live_feeds","");
	add_submenu_page("live_feeds","Live Feeds","Live Feeds",8,"live_feeds","live_feeds");
	add_submenu_page("live_feeds","Live Feeds","Spam Feeds",8,"spam_Feeds","spam_Feeds");
	add_submenu_page("live_feeds","Live Feeds","Feeds Location",8,"feeds_location","feeds_location");
	 }  
   add_action('admin_menu','form_create_live_feeds_section'); 
   
}
function live_feeds() {
	if(isset($_GET['feedID'])) {
		include(ABSPATH ."wp-content/plugins/liveFeeds/feedDetails.php");
	}
	elseif(isset($_GET['addNew'])) {
		include(ABSPATH ."wp-content/plugins/liveFeeds/addNewfeeds.php");
	} else {
		include(ABSPATH ."wp-content/plugins/liveFeeds/liveFeeds.php");
	}
}

function spam_Feeds() {

	if(isset($_GET['feed_id'])) {
		include(ABSPATH ."wp-content/plugins/liveFeeds/spamFeedDetails.php");
	} else {
		include(ABSPATH ."wp-content/plugins/liveFeeds/spamFeeds.php");
	}
}

function feeds_location() {
	include(ABSPATH ."wp-content/plugins/liveFeeds/feedsLocation.php");
}