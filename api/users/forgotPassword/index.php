<?php 
include("../../../wp-config.php");
global $wpdb;
$data_body = json_decode(file_get_contents("php://input"), true);
$emailAddress = $data_body["emailAddress"];
if( email_exists( $emailAddress )) {
	$user = get_user_by( 'email', $emailAddress );
	$userId = $user->ID;
	$random_password = wp_generate_password();
    wp_set_password( $random_password, $userId );
	$headers = 'From: sonacircle<norply@sonacircle.com>' . "\r\n";
    $headers .= "MIME-Version: 1.0" . "\r\n";
    $headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";
    $to      = $emailAddress;
    $subject = 'New Password';
    $body    = '<table cellspacing="0" border="0" align="center" cellpadding="0" width="600" style="border:1px solid">
            <tr>
                <td>
                    <table cellspacing="0" border="0" align="center" cellpadding="0" width="600" style="border:0px solid #ccc; margin-top:0px;">
                    </table>
                    <table cellspacing="0" border="0" align="center" cellpadding="10" width="90%" style="border:0px solid">
          
                        <tr>
                            <td>
                                <table cellspacing="0" border="0" cellpadding="0" width="100%">
                                    <tr><td></td>
                                    </tr>
									 <tr>
                                    <td>Your new password is '.$random_password.'</td>
                                    </tr>
                                </table>
                            </td>
                            <td width="30"></td> 
                        </tr>
                    </table>
                    <table cellspacing="0" border="0" align="center" cellpadding="0" width="100%" style="border:0px solid #efefef; margin-top:20px; padding:0px;">
                        <tr>
                            <td align="center" style="font-family:PT Sans,sans-serif; font-size:13px; padding:15px 0; border-top:1px solid;"> 
                            <b></b></strong></td> 
                        </tr>
                    </table>
                </td>   
            </tr>
        </table>
<style>
    td{width:100%;}

</style>';
mail( $to, $subject, $body, $headers );
$json = array("success" => 1, "result" => 1, "error" => "No Error Found");
}
else
{
	$json = array("success" => 0, "result" => 0, "error" =>  "Invalid Email Address");
}
echo json_encode($json);
?>