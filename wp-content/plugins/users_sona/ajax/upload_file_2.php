<?php 
include('../../../../wp-config.php');
global $wpdb;
require_once(ABSPATH.'wp-content/plugins/ProductImport/inc/PHPExcel/IOFactory.php');

foreach( $wpdb->get_results("SELECT * FROM `im_upload_file` ORDER BY `url_id` DESC Limit 1") as $key => $row)
{
	$check = explode(".com/",$row->url );
	
}

$document = PHPExcel_IOFactory::load(ABSPATH.$check[1]);
$activeSheetData = $document->getActiveSheet()->toArray(null, true, true, true);
$singlerow=$activeSheetData[2];

//main insertion
$i=0;
$maxiterations=154;
$arrayGet = array();
foreach ($activeSheetData as $data)
{
	


	if ($i < $maxiterations) 
	{
		$query = "SELECT * FROM `im_posts` WHERE `post_title` = '".addslashes($data['A'])."' AND `post_type` = 'deals'";
		

		$results1 = $wpdb->get_results("SELECT * FROM `im_posts` WHERE `post_title` = '".addslashes($data['A'])."' AND `post_type` = 'deals'");
	/*	echo "<pre>";
					print_r($results1);
					echo "</pre>";*/
		if(count($results1) != 0)
		{
			echo $results1[0]->ID;
			$results = $wpdb->get_results("SELECT * FROM `im_deal_timmings` WHERE `deal_id` = ".$results1[0]->ID." and `day` = 'sunday' ");
			
			echo $results[0]->discount_per;
			if($results[0]->discount_per == "")
			{
				/*echo "<pre>";
				print_r($results);
				echo "</pre>";*/
				if($results[0]->start_time != "12:00am" && $results[0]->end_time != "12:00am" && $results[0]->status != "no")
				{
					echo "<pre>";
					print_r($results);
					echo "</pre>";
				}
			}
		}
		else
		{
			echo $query;
		}
		echo "<br>";
		/*echo count($weekArray);
		if(count($weekArray) >= 2)
		{
			echo "<pre>";
			print_r($data);
			echo "</pre>";
		}*/
	}
}