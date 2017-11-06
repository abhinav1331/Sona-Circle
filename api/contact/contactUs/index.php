<?php 
include("../../../wp-config.php");
global $wpdb;
$data_body = json_decode(file_get_contents("php://input"), true);
$name = $data_body["name"];
$emailAddress = $data_body["emailAddress"];
$contactNumber = $data_body["contactNumber"];
$message = $data_body["message"];
$userID      = $data_body["userID"];
if($userID == "" || $emailAddress == "" || $name =="" || $message =="") {
	$json = array("success" => 0, "result" => 0, "error" =>  "Parameters Missing");
}
else
{
	$user = get_user_by( 'ID', $userID );
	if(empty($user)) {
		$json = array("success" => 0, "result" => 0, "error" =>  "Invalid User");
	}
	else
	{
$headers = 'From: sonacircle<norply@sonacircle.com>' . "\r\n";
$to      = 'abhinav@imarkinfotech.com';
$subject = 'Sonacircle';
$body    = '<table cellspacing="0" border="0" align="center" cellpadding="0" width="600" style="border:1px solid">
			<tr>
				<td>
					<table cellspacing="0" border="0" align="center" cellpadding="0" width="600" style="border:0px solid #ccc; margin-top:0px;">
						<!-- -->
						<tr align="center" >
							<td style="font-family:arial;  "><strong>
							<img src="" alt="Sonacircle"></img>
							</strong></td>
						</tr><!-- -->
					</table>
					<table cellspacing="0" border="0" align="center" cellpadding="10" width="90%" style="border:0px solid">
						<tr>
						<td><h3>Hello, Admin</h3></td>
						</tr>
						<tr>
						<td><h3>New User Details<h3></td>
						</tr>
						<tr>
							<td>
								<table cellspacing="0" border="0" cellpadding="0" width="100%">
									<tr>
										<td  align="right" style="width:20%; font-family:PT Sans,sans-serif; font-size:13px; border:1px solid #efefef; border-top:0px; padding:8px;"><strong>Name :</strong></td>
										<td  style="width:20%; font-family:PT Sans,sans-serif; font-size:13px; border:1px solid #efefef; border-top:0px; padding:8px;">'.$name.'</td>
									</tr>
									<tr>
										<td  align="right" style="width:20%; font-family:PT Sans,sans-serif; font-size:13px; border:1px solid #efefef; border-top:0px; padding:8px;"><strong>Email</strong></td>
										<td  style="width:20%; font-family:PT Sans,sans-serif; font-size:13px; border:1px solid #efefef; border-top:0px; padding:8px;">'.$emailAddress.'</td>
									</tr>
									
									<tr>
										<td  align="right" style="width:20%; font-family:PT Sans,sans-serif; font-size:13px; border:1px solid #efefef; border-top:0px; padding:8px;"><strong>Contact Number :</strong></td>
										<td  style="width:20%; font-family:PT Sans,sans-serif; font-size:13px; border:1px solid #efefef; border-top:0px; padding:8px;">'.$contactNumber.'</td>
									</tr>
									<tr>
										<td  align="right" style="width:20%; font-family:PT Sans,sans-serif; font-size:13px; border:1px solid #efefef; border-top:0px; padding:8px;"><strong>Message :</strong></td>
										<td  style="width:20%; font-family:PT Sans,sans-serif; font-size:13px; border:1px solid #efefef; border-top:0px; padding:8px;">'.$message.'</td>
									</tr>	
								</table>
							</td>
							<td width="30"></td> 
						</tr>
					</table>
					<table cellspacing="0" border="0" align="center" cellpadding="0" width="100%" style="border:0px solid #efefef; margin-top:20px; padding:0px;">
						<tr>
							<td align="center" style="font-family:PT Sans,sans-serif; font-size:13px; padding:15px 0; border-top:1px solid;"> 
							<b>Sonacirle</b></strong></td> 
						</tr>
					</table>
				</td>   
			</tr>
		</table>
<style>
    td{width:100%;}

</style>';
wp_mail( $to, $subject, $body, $headers );
$json = array("success" => 1, "result" => 1, "error" => "No Error Found");
}
}
echo json_encode($json);
?>