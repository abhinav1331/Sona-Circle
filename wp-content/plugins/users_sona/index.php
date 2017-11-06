<?php
/*
Plugin Name: Users Sona Circle
Description:
Author: Abhinav Grover
*/

if (is_admin())
{   
  function form_create_user_details_section() 
	 {  
	//add_menu_page("Product Import","Product Import",1,"product_import","");
	
	add_menu_page("Users Details","Users Details",1,"user_section","");
	add_submenu_page("user_section","Users Details","Users Details",8,"user_section","user_section");
	// add_submenu_page("user_section","Users Details","Export User",8,"export_user","export_user");
	 }  
   add_action('admin_menu','form_create_user_details_section'); 
   
}
function user_section()
{
	if(isset($_GET['user_id'])) {
		include(ABSPATH ."wp-content/plugins/users_sona/user_details.php");
	} else {
		include(ABSPATH ."wp-content/plugins/users_sona/users_sona.php");
	}

}
function export_user()
{global $wpdb;
$plugin_url = plugin_dir_url( __FILE__ );
wp_enqueue_script('jquery');
// This will enqueue the Media Uploader script
wp_enqueue_media();
// And let's not forget the script we wrote earlier
wp_enqueue_script('custom.js');
?>
<link rel='stylesheet' href='<?php echo $plugin_url; ?>css/style.css' type='text/css'/>
<link rel='stylesheet' href='<?php echo $plugin_url; ?>css/bootstrap.min.css' type='text/css'/>
<link rel='stylesheet' href='<?php echo $plugin_url; ?>css/toastr.css' type='text/css'/>
<link rel='stylesheet' href='//cdn.datatables.net/1.10.15/css/jquery.dataTables.min.css' type='text/css'/>
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<style>
	body {
		font-family: Arial, Helvetica, sans-serif;
	}

	table {
		font-size: 1em;
	}

	.ui-draggable, .ui-droppable {
		background-position: top;
	}
</style>
<script src="<?php echo $plugin_url; ?>js/bootstrap.min.js"></script>
<script src="<?php echo $plugin_url; ?>js/jquery.validate.js"></script>
<script src="<?php echo $plugin_url; ?>js/form.js"></script>
<script src="<?php echo $plugin_url; ?>js/toastr.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="//cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>
<script src="<?php echo $plugin_url; ?>js/custom.js"></script>
<script>
jQuery(document).ready(function(){
    jQuery('#myTable').DataTable();
});
</script>
	<div class="container1">
		<div class="row">
			<form action="" method="post">
				<input type="submit" class="btn-success" value="Export Users" name="userExport">
			</form>
		</div>
	</div>
	<?php 
		if(isset($_POST['userExport'])) {
	 ?>
	 <script>
	 window.location.href = "<?php echo site_url(); ?>/csv.php";
	 </script>
	 <?php 
		}
	 ?>
	<?php

}