<?php 
include('../../../../wp-config.php');
global $wpdb;
require_once(ABSPATH.'wp-content/plugins/ProductImport/inc/PHPExcel/IOFactory.php');

// $wpdb->query('TRUNCATE TABLE im_posts');
// $wpdb->query('TRUNCATE TABLE im_postmeta');
// $wpdb->query('TRUNCATE TABLE im_check_in_order');
// $wpdb->query('TRUNCATE TABLE im_deal_timmings');
// $wpdb->query('TRUNCATE TABLE im_facility');

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

		
		// if($data['A'] == "Sogo Sushi Asian")
		if($i >= 1)
		{
			$address = $data['F']." ".$data['G']." ".$data['H'];
			$new_post = array(
			'post_title'    => $data['A'],
			'post_content'   => $data['R'],          
			'post_status'   => 'publish',          
			'post_type'     => 'deals',
			'post_author'     => "1" 
			);
			$post_id = wp_insert_post($new_post);

			$array = explode(",",$data['Q']);
			foreach($array as $arr)
			{
				$tmp1 = ltrim($arr);
				$tmp2 = rtrim($tmp1);
				array_push($arrayGet , $tmp2);
			}
			$value = array(
				"address" => $address,
				"lat" => $data['C'],
				"lng" => $data['D']
			);
			if($data['AD'] != "")
			{
				$partySize = $data['AD'];
			}
			else
			{
				$partySize = 4;
			}
			if($data['AH'] != "")
			{
				$minimumOrder = $data['AH'];
			}
			else
			{
				$minimumOrder = "$20";
			}
			echo $data['B'];
			echo "<br>";
			$weekdays = array("Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday");
			$weekArray = explode("\n", $data["T"]);
			$j=0;
			$weekArray = array_filter($weekArray);
			$weekArray = array_values($weekArray);
			foreach($weekArray as $weekArr) 
			{
				echo "<pre>";
				print_r($weekArr);
				echo "</pre>";

 				
				$weekAr = explode(" ", $weekArr);
				$weekAr = array_filter($weekAr);
				$weekAr = array_values($weekAr);
				if (in_array($weekAr[1], $weekdays))	
				{
					add_post_meta( $post_id, 'hours_of_operation_'.$j.'_startday', $weekAr[0], true );
					add_post_meta( $post_id, '_hours_of_operation_'.$j.'_startday', "field_58247015159e5", true );
					add_post_meta( $post_id, 'hours_of_operation_'.$j.'_endday', $weekAr[1], true );
					add_post_meta( $post_id, '_hours_of_operation_'.$j.'_endday', "field_582470a2159e6", true );
					add_post_meta( $post_id, 'hours_of_operation_'.$j.'_starttime', $weekAr[2], true );
					add_post_meta( $post_id, '_hours_of_operation_'.$j.'_starttime', "field_582470bd159e7", true );
					add_post_meta( $post_id, 'hours_of_operation_'.$j.'_endtime', $weekAr[3], true );
					add_post_meta( $post_id, '_hours_of_operation_'.$j.'_endtime', "field_58247213159e8", true );
				}
				else
				{
					add_post_meta( $post_id, 'hours_of_operation_'.$j.'_startday', $weekAr[0], true );
					add_post_meta( $post_id, '_hours_of_operation_'.$j.'_startday', "field_58247015159e5", true );
					add_post_meta( $post_id, 'hours_of_operation_'.$j.'_endday', $weekAr[0], true );
					add_post_meta( $post_id, '_hours_of_operation_'.$j.'_endday', "field_582470a2159e6", true );
					add_post_meta( $post_id, 'hours_of_operation_'.$j.'_starttime', $weekAr[1], true );
					add_post_meta( $post_id, '_hours_of_operation_'.$j.'_starttime', "field_582470bd159e7", true );
					add_post_meta( $post_id, 'hours_of_operation_'.$j.'_endtime', $weekAr[2], true );
					add_post_meta( $post_id, '_hours_of_operation_'.$j.'_endtime', "field_58247213159e8", true );
				}
				$j++;
			}
			add_post_meta( $post_id, 'hours_of_operation', $j, true );
			add_post_meta( $post_id, '_hours_of_operation', "field_58246fe6159e4", true );
			update_field( "location", $value, $post_id );
			update_field( "lifestyle", $arrayGet, $post_id );
			add_post_meta( $post_id, 'address', $address, true );
			add_post_meta( $post_id, 'expensiveness', $data['K'], true );
			add_post_meta( $post_id, 'cuisine', $data['L'], true );
			add_post_meta( $post_id, 'number', $data['M'], true );
			add_post_meta( $post_id, 'restaurant_email', $data['N'], true );
			add_post_meta( $post_id, 'website', $data['O'], true );
			add_post_meta( $post_id, 'menu_link', $data['P'], true );
			add_post_meta( $post_id, 'neighbourhood', $data['J'], true );
			add_post_meta( $post_id, 'number_of_people', $partySize, true );
			add_post_meta( $post_id, 'minimum_price', $minimumOrder, true );
			add_post_meta( $post_id, 'excludes_specialscoupons', $data['AC'], true );
			add_post_meta( $post_id, 'special_notes', $data['AB'], true );
			if($data['E'] != "")
			{
				add_post_meta( $post_id, 'express', "yes", true );
			}
			else
			{
				add_post_meta( $post_id, 'express', "no", true );
			}
			if($data["U"] != "none")
			{
				$arrayTimings = explode(" ",$data["U"]);
				$arrayTimings = array_filter($arrayTimings);
				$arrayTimings = array_values($arrayTimings);
				$dis = explode("%",$arrayTimings[0]);
				$wpdb->insert( 'im_deal_timmings', array(
				'discount_per' => $dis[0],
				'day' => "monday",
				'start_time' => $arrayTimings[1],
				'end_time' => $arrayTimings[2],
				'status' => "yes" )
				);
			}
			else
			{
				$wpdb->insert( 'im_deal_timmings', array(
				'discount_per' => "",
				'day' => "monday",
				'start_time' => "",
				'end_time' => "",
				'status' => "no" )
				);
			}
			if($data["V"] != "none")
			{
				$arrayTimings = explode(" ",$data["V"]);
				$arrayTimings = array_filter($arrayTimings);
				$arrayTimings = array_values($arrayTimings);
				$dis = explode("%",$arrayTimings[0]);
				$wpdb->insert( 'im_deal_timmings', array(
				'discount_per' => $dis[0],
				'deal_id' => $post_id,
				'day' => "tuesday",
				'start_time' => $arrayTimings[1],
				'end_time' => $arrayTimings[2],
				'status' => "yes" )
				);
			}
			else
			{
				$wpdb->insert( 'im_deal_timmings', array(
				'discount_per' => "",
				'deal_id' => $post_id,
				'day' => "tuesday",
				'start_time' => "",
				'end_time' => "",
				'status' => "no" )
				);
			}

			if($data["W"] != "none")
			{
				$arrayTimings = explode(" ",$data["W"]);
				$arrayTimings = array_filter($arrayTimings);
				$arrayTimings = array_values($arrayTimings);
				$dis = explode("%",$arrayTimings[0]);
				$wpdb->insert( 'im_deal_timmings', array(
				'discount_per' => $dis[0],
				'deal_id' => $post_id,
				'day' => "wednesday",
				'start_time' => $arrayTimings[1],
				'end_time' => $arrayTimings[2],
				'status' => "yes" )
				);
			}
			else
			{
				$wpdb->insert( 'im_deal_timmings', array(
				'discount_per' => "",
				'deal_id' => $post_id,
				'day' => "wednesday",
				'start_time' => "",
				'end_time' => "",
				'status' => "no" )
				);
			}
			if($data["X"] != "none")
			{
				$arrayTimings = explode(" ",$data["X"]);
				$arrayTimings = array_filter($arrayTimings);
				$arrayTimings = array_values($arrayTimings);
				$dis = explode("%",$arrayTimings[0]);
				$wpdb->insert( 'im_deal_timmings', array(
				'discount_per' => $dis[0],
				'deal_id' => $post_id,
				'day' => "thursday",
				'start_time' => $arrayTimings[1],
				'end_time' => $arrayTimings[2],
				'status' => "yes" )
				);
			}
			else
			{
				$wpdb->insert( 'im_deal_timmings', array(
				'discount_per' => "",
				'deal_id' => $post_id,
				'day' => "thursday",
				'start_time' => "",
				'end_time' => "",
				'status' => "no" )
				);
			}
			if($data["Y"] != "none")
			{
				$arrayTimings = explode(" ",$data["Y"]);
				$arrayTimings = array_filter($arrayTimings);
				$arrayTimings = array_values($arrayTimings);
				$dis = explode("%",$arrayTimings[0]);
				$wpdb->insert( 'im_deal_timmings', array(
				'discount_per' => $dis[0],
				'deal_id' => $post_id,
				'day' => "friday",
				'start_time' => $arrayTimings[1],
				'end_time' => $arrayTimings[2],
				'status' => "yes" )
				);
			}
			else
			{
				$wpdb->insert( 'im_deal_timmings', array(
				'discount_per' => "",
				'deal_id' => $post_id,
				'day' => "friday",
				'start_time' => "",
				'end_time' => "",
				'status' => "no" )
				);
			}
			if($data["Z"] != "none")
			{
				$arrayTimings = explode(" ",$data["Z"]);
				$arrayTimings = array_filter($arrayTimings);
				$arrayTimings = array_values($arrayTimings);
				$dis = explode("%",$arrayTimings[0]);
				$wpdb->insert( 'im_deal_timmings', array(
				'discount_per' => $dis[0],
				'deal_id' => $post_id,
				'day' => "saturday",
				'start_time' => $arrayTimings[1],
				'end_time' => $arrayTimings[2],
				'status' => "yes" )
				);
			}
			else
			{
				$wpdb->insert( 'im_deal_timmings', array(
				'discount_per' => "",
				'deal_id' => $post_id,
				'day' => "saturday",
				'start_time' => "",
				'end_time' => "",
				'status' => "no" )
				);
			}
			if($data["AA"] != "none")
			{
				$arrayTimings = explode(" ",$data["AA"]);
				$arrayTimings = array_filter($arrayTimings);
				$arrayTimings = array_values($arrayTimings);
				$dis = explode("%",$arrayTimings[0]);
				$wpdb->insert( 'im_deal_timmings', array(
				'discount_per' => $dis[0],
				'deal_id' => $post_id,
				'day' => "sunday",
				'start_time' => $arrayTimings[1],
				'end_time' => $arrayTimings[2],
				'status' => "yes" )
				);
			}
			else
			{
				$wpdb->insert( 'im_deal_timmings', array(
				'discount_per' => "",
				'deal_id' => $post_id,
				'day' => "sunday",
				'start_time' => "",
				'end_time' => "",
				'status' => "no" )
				);
			}
			if($data["AD"] != "")
			{
				$wpdb->insert( 'im_facility', array(
					'deal_id' => $post_id,
					'name' => "Up To ".$partySize." People",
					'image' => "Upto-4-People",
					'status' => "yes" )
				);
			}
			else
			{
				$wpdb->insert( 'im_facility', array(
					'deal_id' => $post_id,
					'name' => "Up To ".$partySize." People",
					'image' => "Upto-4-People",
					'status' => "no" )
				);
			}
			if($data["AH"] != "")
			{
				$wpdb->insert( 'im_facility', array(
					'deal_id' => $post_id,
					'name' => $minimumOrder." Minimum",
					'image' => "$25-Minimum",
					'status' => "yes" )
				);
			}
			else
			{
				$wpdb->insert( 'im_facility', array(
					'deal_id' => $post_id,
					'name' => $minimumOrder." Minimum",
					'image' => "$25-Minimum",
					'status' => "no" )
				);
			}
			if($data["AE"] != "no")
			{
				$wpdb->insert( 'im_facility', array(
					'deal_id' => $post_id,
					'name' => "Dine In Only",
					'image' => "Dine-In-Only",
					'status' => "yes" )
				);
			}
			else
			{
				$wpdb->insert( 'im_facility', array(
					'deal_id' => $post_id,
					'name' => "Dine In Only",
					'image' => "Dine-In-Only",
					'status' => "no" )
				);
			}
			if($data["AF"] != "")
			{
				if($data["AF"] != "yes")
				{
					$wpdb->insert( 'im_facility', array(
					'deal_id' => $post_id,
					'name' => "No Holidays",
					'image' => "No-Holidays",
					'status' => "no" )
					);
				}
				else
				{
					$wpdb->insert( 'im_facility', array(
					'deal_id' => $post_id,
					'name' => "No Holidays",
					'image' => "No-Holidays",
					'status' => "yes" )
					);
				}
			}
			else
			{
				$wpdb->insert( 'im_facility', array(
					'deal_id' => $post_id,
					'name' => "No Holidays",
					'image' => "No-Holidays",
					'status' => "no" )
				);
			}


			if($data["AG"] != "")
			{
				if($data["AG"] != "yes")
				{
					$wpdb->insert( 'im_facility', array(
					'deal_id' => $post_id,
					'name' => "No Happy Hours",
					'image' => "No-Happy-Hour",
					'status' => "no" )
					);
				}
				else
				{
					$wpdb->insert( 'im_facility', array(
					'deal_id' => $post_id,
					'name' => "No Happy Hours",
					'image' => "No-Happy-Hour",
					'status' => "yes" )
					);
				}
			}
			else
			{
				$wpdb->insert( 'im_facility', array(
					'deal_id' => $post_id,
					'name' => "No Happy Hours",
					'image' => "No-Happy-Hour",
					'status' => "no" )
				);
			}

			if($data["AI"] != "")
			{
				if($data["AI"] != "yes")
				{
					$wpdb->insert( 'im_facility', array(
					'deal_id' => $post_id,
					'name' => "Cash Only",
					'image' => "Cash-Only",
					'status' => "no" )
					);
				}
				else
				{
					$wpdb->insert( 'im_facility', array(
					'deal_id' => $post_id,
					'name' => "Cash Only",
					'image' => "Cash-Only",
					'status' => "yes" )
					);
				}
			}
			else
			{
				$wpdb->insert( 'im_facility', array(
					'deal_id' => $post_id,
					'name' => "Cash Only",
					'image' => "Cash-Only",
					'status' => "no" )
				);
			}

			if($data["AJ"] != "")
			{
				if($data["AJ"] != "yes")
				{
					$wpdb->insert( 'im_facility', array(
					'deal_id' => $post_id,
					'name' => ">Must Buy Entree",
					'image' => "Must-Buy-Entry",
					'status' => "no" )
					);
				}
				else
				{
					$wpdb->insert( 'im_facility', array(
					'deal_id' => $post_id,
					'name' => ">Must Buy Entree",
					'image' => "Must-Buy-Entry",
					'status' => "yes" )
					);
				}
			}
			else
			{
				$wpdb->insert( 'im_facility', array(
					'deal_id' => $post_id,
					'name' => ">Must Buy Entree",
					'image' => "Must-Buy-Entry",
					'status' => "no" )
				);
			}
			

			if($data["AK"] != "")
			{
				if($data["AK"] != "yes")
				{
					$wpdb->insert( 'im_facility', array(
					'deal_id' => $post_id,
					'name' => "Dining Area Only",
					'image' => "Dining-Area-Only",
					'status' => "no" )
					);
				}
				else
				{
					$wpdb->insert( 'im_facility', array(
					'deal_id' => $post_id,
					'name' => "Dining Area Only",
					'image' => "Dining-Area-Only",
					'status' => "yes" )
					);
				}
			}
			else
			{
				$wpdb->insert( 'im_facility', array(
					'deal_id' => $post_id,
					'name' => "Dining Area Only",
					'image' => "Dining-Area-Only",
					'status' => "no" )
				);
			}
			
			

			if($data["AL"] != "")
			{
				if($data["AL"] != "yes")
				{
					$wpdb->insert( 'im_facility', array(
					'deal_id' => $post_id,
					'name' => "Call For Reservation",
					'image' => "call-for-reservation",
					'status' => "no" )
					);
				}
				else
				{
					$wpdb->insert( 'im_facility', array(
					'deal_id' => $post_id,
					'name' => "Call For Reservation",
					'image' => "call-for-reservation",
					'status' => "yes" )
					);
				}
			}
			else
			{
				$wpdb->insert( 'im_facility', array(
					'deal_id' => $post_id,
					'name' => "Call For Reservation",
					'image' => "call-for-reservation",
					'status' => "no" )
				);
			}
			
			
			

			if($data["AM"] != "")
			{
				if($data["AM"] != "yes")
				{
					$wpdb->insert( 'im_facility', array(
					'deal_id' => $post_id,
					'name' => "Accepted on Pickup",
					'image' => "accepted-on-pick-up",
					'status' => "no" )
					);
				}
				else
				{
					$wpdb->insert( 'im_facility', array(
					'deal_id' => $post_id,
					'name' => "Accepted on Pickup",
					'image' => "accepted-on-pick-up",
					'status' => "yes" )
					);
				}
			}
			else
			{
				$wpdb->insert( 'im_facility', array(
					'deal_id' => $post_id,
					'name' => "Accepted on Pickup",
					'image' => "accepted-on-pick-up",
					'status' => "no" )
				);
			}
			
			
			

			if($data["AN"] != "")
			{
				if($data["AN"] != "yes")
				{
					$wpdb->insert( 'im_facility', array(
					'deal_id' => $post_id,
					'name' => "No Takeout",
					'image' => "no-takeout",
					'status' => "no" )
					);
				}
				else
				{
					$wpdb->insert( 'im_facility', array(
					'deal_id' => $post_id,
					'name' => "No Takeout",
					'image' => "no-takeout",
					'status' => "yes" )
					);
				}
			}
			else
			{
				$wpdb->insert( 'im_facility', array(
					'deal_id' => $post_id,
					'name' => "No Takeout",
					'image' => "no-takeout",
					'status' => "no" )
				);
			}
			
		}
		$i++;
	}
	else  
	{  
		break;
	}
}
 $arrayGet = array_filter($arrayGet);
$arrayGet = array_unique($arrayGet);
$arrayGet = array_values($arrayGet);
foreach($arrayGet as $array1)
{
	echo $array1;
	echo "<br>";
}
echo "<pre>";
print_r($arrayGet);
echo "</pre>";