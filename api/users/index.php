<?php 
include("../../../wp-config.php");

global $wpdb;
require_once(ABSPATH . 'wp-admin/includes/media.php');
require_once(ABSPATH . 'wp-admin/includes/file.php');
require_once(ABSPATH . 'wp-admin/includes/image.php');


$data_body = json_decode(file_get_contents("php://input"), true);
$userImageUrl = $data_body['userImageUrl'];
$name = $data_body["name"];
$emailAddress = $data_body["emailAddress"];
$password = $data_body["password"];
$facebookId = $data_body["facebookId"];
$latitude = $data_body["latitude"];
$longitude = $data_body["longitude"];
$firebaseTokenId = $data_body["firebaseTokenId"];
$deviceType = $data_body["deviceType"];
$quickBloxID = $data_body["quickBloxID"];
if(empty($quickBloxID)){
    $quickBloxID='';
}
$quickBloxPaswd = $data_body["quickBloxPaswd"];
if(empty($quickBloxPaswd)){
    $quickBloxPaswd='';
}


if($emailAddress !="" || $password !="") {
	if( email_exists( $emailAddress )) {
		$user = get_user_by( "email", $emailAddress );
		$userID = $user->data->ID;
		$first_name = get_user_meta($user->data->ID, "first_name", true);
		$email_Address = $user->data->user_email;
		$profileImageURL = get_user_meta((int)$userID, "userImageUrl", true);

		if($profileImageURL == "") {
			$profileImageURL = "";
		}

		if($firebaseTokenId != "") {
			update_user_meta( $user->data->ID, 'firebaseTokenId', $firebaseTokenId );
		}
		if($facebookId != "") {
			$facebookIdold = get_user_meta($userID, "facebookId", true);
			$age = get_user_meta((int)$userID , "age" , true);
			$gender = get_user_meta($userID , "gender" , true);
			$nationality = get_user_meta($userID , "nationality" , true);
			$officialStatus = get_user_meta($userID , "officialStatus" , true);
			$profession = get_user_meta($userID , "profession" , true);
			$bio = get_user_meta($userID, "bio" , true);
			$location = get_user_meta($userID , "location" , true);
			$quickBloxID = get_user_meta($userID , "quickBloxID" , true);
			$quickBloxPaswd = get_user_meta($userID , "quickBloxPaswd" , true);
			$userStatus = get_user_meta($userID , "userStatus" , true);
			update_user_meta( $user->data->ID, 'latitude', $latitude );
			update_user_meta( $user->data->ID, 'longitude', $longitude );
			update_user_meta( $user->data->ID, 'deviceType', $deviceType );
			$arrayData = array("userID" => (int)$userID , "name" => $name, "emailAddress" => $email_Address, "userImageUrl" => $profileImageURL , "age" => $age , "gender" => $gender , "nationality" => $nationality , "officialStatus" => $officialStatus , "profession" => $profession , "bio" => $bio , "location" => $location, "quickBloxPaswd" => $quickBloxPaswd , "quickBloxID" => $quickBloxID , "isVerified" => $userStatus);
			$json = array("success" => 1, "result" => $arrayData, "error" => "No Error Found");
		} else {
			$json = array("success" => 0, "result" =>null, "error" => "Email Address Already Exists");
		}
	} else {

		if($facebookId != "") {
			if($password != "") {
				$password = $password;
			} else {
				$password = "Admin123#@";
			}
		} else {
			$password = $password;
		}
		$user_id = wp_create_user( $emailAddress, $password, $emailAddress );
		update_user_meta( $user_id, "first_name", $name); 
		$getUserPriofileWay = get_user_meta($user_id, "getUserPriofileWay", true);
		if ($getUserPriofileWay != "") {
			update_user_meta( $user_id, "userImageUrl", $data_body['userImageUrl']); 
		}
		if($facebookId == "") {
			$myQuery = base64_encode("email=".$emailAddress);
			update_user_meta( $user_id, "userStatus", 0); 
			$message = "<html><head><title></title><meta http-equiv='Content-Type' content='text/html; charset=utf-8'><meta name='viewport' content='width=320, target-densitydpi=device-dpi'><style type='text/css'>@media only screen and (max-width: 660px){table[class=w0], td[class=w0]{width: 0 !important;}table[class=w10], td[class=w10], img[class=w10]{width:10px !important;}table[class=w15], td[class=w15], img[class=w15]{width:5px !important;}table[class=w30], td[class=w30], img[class=w30]{width:10px !important;}table[class=w60], td[class=w60], img[class=w60]{width:10px !important;}table[class=w125], td[class=w125], img[class=w125]{width:80px !important;}table[class=w130], td[class=w130], img[class=w130]{width:55px !important;}table[class=w140], td[class=w140], img[class=w140]{width:90px !important;}table[class=w160], td[class=w160], img[class=w160]{width:180px !important;}table[class=w170], td[class=w170], img[class=w170]{width:100px !important;}table[class=w180], td[class=w180], img[class=w180]{width:80px !important;}table[class=w195], td[class=w195], img[class=w195]{width:80px !important;}table[class=w220], td[class=w220], img[class=w220]{width:80px !important;}table[class=w240], td[class=w240], img[class=w240]{width:180px !important;}table[class=w255], td[class=w255], img[class=w255]{width:185px !important;}table[class=w275], td[class=w275], img[class=w275]{width:135px !important;}table[class=w280], td[class=w280], img[class=w280]{width:135px !important;}table[class=w300], td[class=w300], img[class=w300]{width:140px !important;}table[class=w325], td[class=w325], img[class=w325]{width:95px !important;}table[class=w360], td[class=w360], img[class=w360]{width:140px !important;}table[class=w410], td[class=w410], img[class=w410]{width:180px !important;}table[class=w470], td[class=w470], img[class=w470]{width:200px !important;}table[class=w580], td[class=w580], img[class=w580]{width:280px !important;}table[class=w640], td[class=w640], img[class=w640]{width:300px !important;}table[class*=hide], td[class*=hide], img[class*=hide], p[class*=hide], span[class*=hide]{display:none !important;}table[class=h0], td[class=h0]{height: 0 !important;}p[class=footer-content-left]{text-align: center !important;}#headline p{font-size: 30px !important;}.article-content, #left-sidebar{-webkit-text-size-adjust: 90% !important; -ms-text-size-adjust: 90% !important;}.header-content, .footer-content-left{-webkit-text-size-adjust: 80% !important; -ms-text-size-adjust: 80% !important;}img{height: auto; line-height: 100%;}}#outlook a{padding: 0;}body{width: 100% !important;}.ReadMsgBody{width: 100%;}.ExternalClass{width: 100%; display:block !important;}body{background-color: #ececec; margin: 0; padding: 0;}img{outline: none; text-decoration: none; display: block;}br, strong br, b br, em br, i br{line-height:100%;}h1, h2, h3, h4, h5, h6{line-height: 100% !important; -webkit-font-smoothing: antialiased;}h1 a, h2 a, h3 a, h4 a, h5 a, h6 a{color: blue !important;}h1 a:active, h2 a:active, h3 a:active, h4 a:active, h5 a:active, h6 a:active{color: red !important;}h1 a:visited, h2 a:visited, h3 a:visited, h4 a:visited, h5 a:visited, h6 a:visited{color: purple !important;}table td, table tr{border-collapse: collapse;}.yshortcuts, .yshortcuts a, .yshortcuts a:link,.yshortcuts a:visited, .yshortcuts a:hover, .yshortcuts a span{color: black; text-decoration: none !important; border-bottom: none !important; background: none !important;}code{white-space: normal; word-break: break-all;}#background-table{background-color:;}#top-bar{border-radius:6px 6px 0px 0px; -moz-border-radius: 6px 6px 0px 0px; -webkit-border-radius:6px 6px 0px 0px; -webkit-font-smoothing: antialiased; background-color: #c1227d; color: #FCFCFC;}#top-bar a{font-weight: bold; color: #FFFFFF; text-decoration: none;}#footer{border-radius:0px 0px 6px 6px; -moz-border-radius: 0px 0px 6px 6px; -webkit-border-radius:0px 0px 6px 6px; -webkit-font-smoothing: antialiased;}body, td{font-family: 'Helvetica Neue', Arial, Helvetica, Geneva, sans-serif;}.header-content, .footer-content-left, .footer-content-right{-webkit-text-size-adjust: none; -ms-text-size-adjust: none;}.header-content{font-size: 12px; color: #FCFCFC;}.header-content a{font-weight: bold; color: #FFFFFF; text-decoration: none;}#headline p{color: #f2e9a8; font-family: 'Helvetica Neue', Arial, Helvetica, Geneva, sans-serif; font-size: 36px; text-align: center; margin-top:0px; margin-bottom:30px;}#headline p a{color: #f2e9a8; text-decoration: none;}.article-title{font-size: 24px; line-height:24px; color: #9c9aa8; font-weight:bold; margin-top:0px; margin-bottom:18px; font-family: 'Helvetica Neue', Arial, Helvetica, Geneva, sans-serif;}.article-title a{color: #9c9aa8; text-decoration: none;}.article-title.with-meta{margin-bottom: 0;}.article-meta{font-size: 13px; line-height: 20px; color: #ccc; font-weight: bold; margin-top: 0;}.article-content{font-size: 13px; line-height: 18px; color: #444444; margin-top: 0px; margin-bottom: 18px; font-family: 'Helvetica Neue', Arial, Helvetica, Geneva, sans-serif;}.article-content a{color: #9c9aa8; font-weight:bold; text-decoration:none;}.article-content img{max-width: 100%}.article-content ol, .article-content ul{margin-top:0px; margin-bottom:18px; margin-left:19px; padding:0;}.article-content li{font-size: 13px; line-height: 18px; color: #444444;}.article-content li a{color: #9c9aa8; text-decoration:underline;}.article-content p{margin-bottom: 15px;}.footer-content-left{font-size: 12px; line-height: 15px; color: #FFFFFF; margin-top: 0px; margin-bottom: 15px;}.footer-content-left a{color: #FFFFFF; font-weight: bold; text-decoration: none;}.footer-content-right{font-size: 11px; line-height: 16px; color: #FFFFFF; margin-top: 0px; margin-bottom: 15px;}.footer-content-right a{color: #FFFFFF; font-weight: bold; text-decoration: none;}#footer{background-color: #c1227d; color: #FFFFFF;}#footer a{color: #FFFFFF; text-decoration: none; font-weight: bold;}#permission-reminder{white-space: normal;}#street-address{color: #FFFFFF; white-space: normal;}.article-title1{font-size: 18px; line-height:24px; color: #9c9aa8; font-weight:bold; margin-top:0px; margin-bottom:18px; font-family: 'Helvetica Neue', Arial, Helvetica, Geneva, sans-serif;}.article-title1{margin-bottom: 0;}.article-title2{font-size: 24px; line-height:24px; color: #9c9aa8; font-weight:bold; margin-top:0px; margin-bottom:18px; font-family: 'Helvetica Neue', Arial, Helvetica, Geneva, sans-serif;}.article-title2{margin-bottom: 0;}.article-content1{-webkit-text-size-adjust: 90% !important; -ms-text-size-adjust: 90% !important;}.article-content1{font-size: 13px; line-height: 18px; color: #444444; margin-top: 0px; margin-bottom: 18px; font-family: 'Helvetica Neue', Arial, Helvetica, Geneva, sans-serif;}#left-sidebar{-webkit-text-size-adjust: 90% !important; -ms-text-size-adjust: 90% !important;}.article-content2{-webkit-text-size-adjust: 90% !important; -ms-text-size-adjust: 90% !important;}.article-content2{font-size: 13px; line-height: 18px; color: #444444; margin-top: 0px; margin-bottom: 18px; font-family: 'Helvetica Neue', Arial, Helvetica, Geneva, sans-serif;}.pink{color:#c1227d;}</style><!--[if gte mso 9]><style _tmplitem='228' >.article-content ol, .article-content ul{margin: 0 0 0 24px; padding: 0; list-style-position: inside;}</style><![endif]--></head><body><table id='background-table' style='width: 100%;' border='0' cellspacing='0' cellpadding='0'><tbody><tr><td align='center' bgcolor='#ececec'><table class='w640' style='margin: 0px 10px; width: 640px;' border='0' cellspacing='0' cellpadding='0'><tbody><tr><td class='w640' width='640' height='20'>&nbsp;</td></tr><tr><td class='w640' width='640'></td></tr><tr> <td width='640' align='center' bgcolor='#FFFFFF' class='w640' id='header'> <div style='text-align: center;' align='center'><img src='<?php echo site_url(); ?>/logo.png' alt=''/></div></td></tr><tr id='simple-content-row'> <td class='w640' bgcolor='#ffffff' width='640'> <table class='w640' style='width: 640px;' border='0' cellspacing='0' cellpadding='0'> <tbody> <tr> <td class='w30' width='30'>&nbsp;</td><td class='w580' width='580'> <table class='w580' style='width: 580px;' border='0' cellspacing='0' cellpadding='0'> <tbody> <tr> <p class='article-content'>Thank you for signing up with Sona Circle.</p><p class='article-content'>Please verify your email address by clicking <a href='".site_url()."/verify/?".$myQuery."'>Here</a> </p><p class='article-content'> Thank You! </p><p class='article-content'>Team Sona Circle</p></td></tr></tbody> </table></td><td class='w30' width='30'>&nbsp;</td></tr></tbody> </table> </td></tr><tr><td class='w640' bgcolor='#ffffff' width='640' height='15'>&nbsp;</td></tr><tr><td class='w640' width='640'></td></tr><tr><td class='w640' width='640' height='60'>&nbsp;</td></tr></tbody></table></td></tr></tbody></table></body></html>";

			$to = $emailAddress;
			$subject = "Sona Circle";
			$headers = "From: noreply@sonacircle.com" . "\r\n";
			$headers .= "Content-Type: text/html; charset=ISO-8859-1\r\n";
			mail($to, $subject, $message, $headers);

		} else {
			update_user_meta( $user_id, "userStatus", 1); 
		}
		update_user_meta( $user_id, "facebookId", $facebookId); 
		update_user_meta( $user_id, "firebaseTokenId", $firebaseTokenId); 
		update_user_meta( $user_id, 'deviceType', $deviceType );
		$wpdb->insert( 'im_usermeta', array(
			'user_id' => $user_id,
			'meta_key' => "userImageUrl",
			'meta_value' => $data_body['userImageUrl'] )
		); 
		$profileImageURL = get_user_meta($user_id, "profileImageURL", true);
		if($profileImageURL == "") {
			$profileImageURL = "";
		}
		update_user_meta( $user_id, "latitude", $latitude); 
		update_user_meta( $user_id, "longitude", $longitude); 
		update_user_meta( $user_id, 'pushNotification', 1 );
		update_user_meta( $user_id, 'broadcastNotification', 1 );
		update_user_meta( $user_id, 'postNotification', 1 );
		update_user_meta( $user_id, 'showPreview', 1 );
		$age = get_user_meta($user_id , "age" , true);
		$gender = get_user_meta($user_id , "gender" , true);
		$nationality = get_user_meta($user_id , "nationality" , true);
		$officialStatus = get_user_meta($user_id , "officialStatus" , true);
		$profession = get_user_meta($user_id , "profession" , true);
		$bio = get_user_meta($user_id, "bio" , true);
		$location = get_user_meta($user_id , "location" , true);
		$userStatus = get_user_meta($user_id , "userStatus" , true);
		$arrayData = array("userID" => (int)$user_id , "name" => $name, "emailAddress" => $emailAddress, "userImageUrl" => $profileImageURL , "age" => $age , "gender" => $gender , "nationality" => $nationality , "officialStatus" => $officialStatus , "profession" => $profession , "bio" => $bio , "location" => $location, "quickBloxPaswd" => "" , "quickBloxID" => "", "isVerified" => $userStatus);

		$json = array("success" => 1, "result" => $arrayData, "error" => "No Error Found");
	}
	
} else {
	$json = array("success" => 0, "result" => null, "error" =>  "Parameter Missing");	
}
echo json_encode($json);

?>