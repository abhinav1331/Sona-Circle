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

<div class="container">
<?php 
$feedID = $_GET['discussionID'];
$feedDetails = $wpdb->get_results("SELECT * FROM `im_discussion` WHERE `id` = $feedID");
/*echo "<pre>";
	print_r($feedDetails);
echo "</pre>";*/
 ?>
 <script>
	jQuery(document).ready(function(){
	    jQuery('#myTable').DataTable();
	});
	jQuery(document).ready(function(){
	    jQuery('#myTable1').DataTable();
	});
	jQuery(document).ready(function(){
	    jQuery('#myTable2').DataTable();
	});
</script>
 <div class="col-lg-6"><h1>Discussion title<p><?php echo $feedDetails[0]->title ?></p></h1></div>
 <div class="col-lg-6"><h1>Discussion Description</h1><p><?php echo $feedDetails[0]->description ?></div>
</div>
<div id="exTab1" class="container">	
<ul  class="nav nav-pills">
			<li class="active">
        <a  href="#1a" data-toggle="tab">Feeds Liked</a>
			</li>
			<li>
        <a  href="#3a" data-toggle="tab">Feeds Unliked</a>
			</li>
			<li><a href="#2a" data-toggle="tab">Feeds Comment</a>
			</li>
		</ul>

			<div class="tab-content clearfix">
			  <div class="tab-pane active" id="1a">
      				<table id="myTable" class="table-striped">
						<thead>
							<tr>
								<th>S.no</th>
								<th>User ID</th>
								<th>Email Address</th>
								<th>user Image</th>
								<th>Time</th>
							</tr>
						</thead>
						<tbody>
							<?php 
							$i=1;
							foreach( $wpdb->get_results("SELECT * FROM `im_discussion_like` WHERE `dis_id` = $feedID") as $key => $row) {
								$user_info = get_userdata($row->user_id);
								$userImageUrl = get_user_meta($row->user_id , "userImageUrl" , true);
							?>
							<tr>
								<td><?php echo $i; ?></td>
								<td><?php echo $row->user_id; ?></td>
								<td><a href="mailto:<?php echo $user_info->user_email; ?>"><?php echo $user_info->user_email; ?></a></td>
								<td><?php if($userImageUrl != "") { ?><img src="<?php echo $userImageUrl; ?>" width="100px" height="100px" alt=""><?php } ?></td>
								<td><?php echo date("y-m-d" , $row->created_ad); ?></td>
							</tr>
							<?php $i++; } ?>
						</tbody>
					</table>
				</div>
				<div class="tab-pane" id="2a">
     				<table id="myTable1" class="table-striped">
						<thead>
							<tr>
								<th>S.no</th>
								<th>User ID</th>
								<th>Email Address</th>
								<th>user Image</th>
								<th>Comment</th>
								<th>Time</th>
							</tr>
						</thead>
						<tbody>
							<?php 
							$i = 1;
							foreach( $wpdb->get_results("SELECT * FROM `im_discussion_comment` WHERE `dis_id` = $feedID") as $key => $row) {
								$user_info = get_userdata($row->user_id);
								$userImageUrl = get_user_meta($row->user_id , "userImageUrl" , true);
							?>
							<tr>
								<td><?php $i; ?></td>
								<td><?php echo $row->user_id; ?></td>
								<td><a href="mailto:<?php echo $user_info->user_email; ?>"><?php echo $user_info->user_email; ?></a></td>
								<td><?php if($userImageUrl != "") { ?><img src="<?php echo $userImageUrl; ?>" width="100px" height="100px" alt=""><?php } ?></td>
								<td><p><?php echo $row->user_comment; ?></p></td>
								<td><?php echo date("y-m-d" , $row->created_at); ?></td>
							</tr>
							<?php $i++; } ?>
						</tbody>
					</table>
				</div>
        <div class="tab-pane" id="3a">
          			<table id="myTable2" class="table-striped">
						<thead>
							<tr>
								<th>S.no</th>
								<th>User ID</th>
								<th>Email Address</th>
								<th>user Image</th>
								<th>Time</th>
							</tr>
						</thead>
						<tbody>
							<?php 
							$i=1;
							foreach( $wpdb->get_results("SELECT * FROM `im_discussion_unlike` WHERE `dis_id` = $feedID") as $key => $row) {
								$user_info = get_userdata($row->user_id);
								$userImageUrl = get_user_meta($row->user_id , "userImageUrl" , true);
							?>
							<tr>
								<td><?php echo $i; ?></td>
								<td><?php echo $row->user_id; ?></td>
								<td><a href="mailto:<?php echo $user_info->user_email; ?>"><?php echo $user_info->user_email; ?></a></td>
								<td><?php if($userImageUrl != "") { ?><img src="<?php echo $userImageUrl; ?>" width="100px" height="100px" alt=""><?php } ?></td>
								<td><?php echo date("y-m-d" , $row->created_at); ?></td>
							</tr>
							<?php $i++; } ?>
						</tbody>
					</table>
				</div>
         
			</div>
  </div>
