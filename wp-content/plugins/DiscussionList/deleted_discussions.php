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

<div class="box-container">
	<div class="bx-innr">
		<h1>Discussions</h1> <a clas="btn btn-primary" href="?page=live_feeds&addNew=yes">Add New feeds</a>
		<table id="myTable" class="table-striped">
			<thead>
				<tr>
					<th>S.no</th>
					<th>User ID</th>
					<th>Email Address</th>
					<th>Title</th>
					<th>Description</th>
					<th>View Details</th>
					<th>Delete Feed</th>
				</tr>
			</thead>
			<tbody>
				<?php 
				$i=1;
				foreach( $wpdb->get_results("SELECT * FROM `im_discussion` WHERE `status` = 0 ORDER BY `id` DESC") as $key => $row) {
					$user_info = get_userdata($row->user_id);
					
				?>
				<tr>
					<td><?php echo $i; ?></td>
					<td><?php echo $row->user_id ?></td>
					<td><a href="mailto:<?php echo $user_info->user_email; ?>"><?php echo $user_info->user_email; ?></a></td>
					<td><p><?php echo $row->title; ?></p></td>
					<td><p><?php echo $row->description ?></p></td>
					<td><a class="btn btn-danger" href="?page=discussion&discussionID=<?php echo $row->id; ?>">View Details</a></td>
					<td><a href="javascript:void(0)" onclick="deleteFeeds(this,<?php echo $row->id; ?>)" class="btn btn-danger">DELETE</a></td>
				</tr>
				<?php $i++;  }  ?>
			</tbody>
		</table>
	</div>
</div>