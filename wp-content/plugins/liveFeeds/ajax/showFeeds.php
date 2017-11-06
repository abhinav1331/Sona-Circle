<?php 
include('../../../../wp-config.php');
global $wpdb;

$lat = $_POST['lat'];
$lng = $_POST['lng'];
$miles = $_POST['miles'];


//Functions
function distance($lat1, $lon1, $lat2, $lon2, $unit) {
	  $theta = $lon1 - $lon2;
	  $dist = sin(deg2rad($lat1)) * sin(deg2rad($lat2)) +  cos(deg2rad($lat1)) * cos(deg2rad($lat2)) * cos(deg2rad($theta));
	  $dist = acos($dist);
	  $dist = rad2deg($dist);
	  $miles = $dist * 60 * 1.1515;
	  $unit = strtoupper($unit);
	  if ($unit == "K") {
	    return ($miles * 1.609344);
	  } else if ($unit == "N") {
	      return ($miles * 0.8684);
	    } else {
	        return $miles;
	      }
	}
//Functions


$myArrayUsers = array();
$getArray = get_users();
foreach ($getArray as $key => $value) {
	$latitudee = get_user_meta($value->ID , "latitude" , true);
	$longitudee = get_user_meta($value->ID , "longitude" , true);
	$distance =  distance(floatval($latitude), floatval($longitude), floatval($latitudee), floatval($longitudee), "M");
	if($distance <= $miles) {
		$myArrayUsers[] = array("user_id" => $value->ID , "distance" => $distance);
	}
}

$myFeedsMost = array();
foreach ($myArrayUsers as $key => $myArrayUser) {
	
	$id = $myArrayUser['user_id'];
	$distance = $myArrayUser['distance'];
	$userFeeds = $wpdb->get_results("SELECT * FROM `im_feeds` WHERE `user_id` = $id AND `status` = 1 ORDER BY `id` DESC");
	foreach ($userFeeds as $key => $value1) {
		/*echo "<pre>";
			print_r($value1->id);
		echo "</pre>";*/
		$likeCount = $wpdb->get_var("SELECT count(`id`) FROM `im_feeds_like` WHERE `feed_id` = $value1->id");
		$im_feed_comment = $wpdb->get_var("SELECT count(`id`) FROM `im_feed_comment` WHERE `feed_id` = $value1->id");
		$isLiked = $wpdb->get_var("SELECT count(`id`) FROM `im_feeds_like` WHERE `feed_id` = $value1->id AND `user_id` = $userID");
		$popu = $likeCount + $im_feed_comment;
		 // echo "SELECT count(`id`) FROM `im_feeds_spam` WHERE `user_id` = $userID AND `feed_id` = $value1->id";
		$im_feeds_spam = $wpdb->get_var("SELECT count(`id`) FROM `im_feeds_spam` WHERE `user_id` = $userID AND `feed_id` = $value1->id");
		if($im_feeds_spam == 0) {
			/*echo $value1->id.$value1->image_url;
			echo "<br>";*/
			if($value1->description != "" && $value1->image_url != "") {
				$part = 2;
			} elseif($value1->description != "" && $value1->image_url == "") {
				$part = 1;
			} elseif($value1->description == "" && $value1->image_url != "") {
				$part = 0;
			}
			$name = get_user_meta($id , "first_name" , true);
			$quickBloxID = get_user_meta($id , "quickBloxID" , true);
			$userImageUrl = get_user_meta($id , "userImageUrl" , true);
			$myFeedsMost[] = array("feedID" => $value1->id , "opponentID" => $id ,"quickBloxID" => $quickBloxID , "distance" => $distance ,"description" => $value1->description , "image" => $value1->image_url , "likeCount" => $likeCount , "commentCount" => $im_feed_comment , "name" => $name , "userImageUrl" => $userImageUrl , "display" => $part , "isLiked" => $isLiked , "popularity" => $popu);
		}
	}
	
}
/*echo "<pre>";
	print_r($myFeedsMost);
echo "</pre>";*/
	$price = array();
foreach ($myFeedsMost as $key => $row) {
    $price[$key] = $row['feedID'];
}
array_multisort($price, SORT_DESC, $myFeedsMost);

?>
<table id="myTable" class="table-striped">
	<thead>
		<tr>
			<th>S.no</th>
			<th>User ID</th>
			<th>Email Address</th>
			<th>Description</th>
			<th>Image</th>
			<th>View Details</th>
			<th>Delete Feed</th>
		</tr>
	</thead>
	<tbody>
		<?php 
		$i=1;
		foreach ($myFeedsMost as $key => $value) {
			$feedID = $value['feedID'];
			$myRes = $wpdb->get_results("SELECT * FROM `im_feeds` WHERE `id` = $feedID");
			$user_info = get_userdata($myRes[0]->user_id)
		?>
		<tr>
			<td><?php echo $i; ?></td>
			<td><?php echo $myRes[0]->user_id ?></td>
			<td><a href="mailto:<?php echo $user_info->user_email; ?>"><?php echo $user_info->user_email; ?></a></td>
			<td><p><?php echo $myRes[0]->description ?></p></td>
			<td><?php if($myRes[0]->image_url != "") { ?><img src="<?php echo $myRes[0]->image_url; ?>" width="100px" height="100px" alt=""><?php } ?></td>
			<td><a href="?page=live_feeds&feedID=<?php echo $myRes[0]->id; ?>">View Details</a></td>
			<td><a href="javascript:void(0)" onclick="deleteFeeds(this,<?php echo $myRes[0]->id; ?>)" class="btn btn-danger">DELETE</a></td>
		</tr>
		<?php $i++;  }  ?>
	</tbody>
</table>