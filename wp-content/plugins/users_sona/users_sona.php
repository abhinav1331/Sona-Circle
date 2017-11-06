<?php 

	
//include('../wp-config.php');
global $wpdb;
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
<?php $args = array(
	'role'  => 'Subscriber'
 ); 
$myUser = get_users( $args );

 ?>
 <div class="container1">
		<div class="row">
			<form action="" method="post">
				<input type="submit" class="btn-success btnExport" value="Export Users" name="userExport">
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
<table id="myTable" class="table table-striped">
	<thead>
		<tr>
			<th>Name</th>
			<th>Email</th>
			<th>phone</th>
			<th>View Details</th>
		</tr>
	</thead>
	<tbody>
		<?php 
		foreach($myUser as $MyUser) {
			$first_name = get_user_meta( $MyUser->ID, "first_name", true ); 
			$phone = get_user_meta( $MyUser->ID, "phone", true ); 
		?>
		<tr>
			<td><?php echo $first_name; ?></td>
			<td><?php echo $MyUser->data->user_email; ?></td>
			<td><?php echo $phone; ?></td>
			<td><a class="btn btn-primary btn-danger" href="?page=user_section&user_id=<?php echo $MyUser->ID ?>">View Details</a></td>
		</tr>
		<?php
		}
 ?>
		
	</tbody>
</table>