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
		<h1>Spam feeds</h1> <!-- <a clas="btn btn-primary" href="?page=live_feeds&addNew=yes">Add New feeds</a> -->
		<table id="myTable" class="table-striped">
			<thead>
				<tr>
					<th>S.no</th>
					<th>Feed ID</th>
					<th>Feed Description</th>
					<!-- <th>Feed Image</th> -->
					<th>Spam Details</th>
					<th>Un Spam Feed</th>
				</tr>
			</thead>
			<tbody>
				<?php 
				$i=1;
				foreach( $wpdb->get_results("SELECT DISTINCT `feed_id` FROM `im_feeds_spam` ORDER BY `feed_id` DESC") as $key => $row) {
					$results = $wpdb->get_results("SELECT * FROM `im_feeds` WHERE `id` = '$row->feed_id'");
					$thisFeedId = $results[0]->id;
					$myCount = $wpdb->get_var("SELECT count(`feed_id`) FROM `im_feeds_spam` WHERE `feed_id` = $thisFeedId");
				?>
				<tr>
					<td><?php echo $i; ?></td>
					<td><?php echo $results[0]->id; ?></td>
					<td><?php echo $small = substr($results[0]->description, 0, 75); ?></td>
					<!-- <td><?php if($results[0]->image_url != "") { ?><img src="<?php echo $results[0]->image_url; ?>" width="200px" height="200px" alt=""><?php } ?></td> -->
					<td><a href="?page=spam_Feeds&feed_id=<?php echo $results[0]->id; ?>"><?php echo $myCount ?> Times</a></td>
					<td><a href="javascript:void(0)" onclick="unspamFeeds(this , '<?php echo $results[0]->id; ?>');">Unspam Feed</a></td>
					
				</tr>
				<?php $i++;  }  ?>
			</tbody>
		</table>
	</div>
</div>

<script>
	function unspamFeeds(event , feedID) {
		jQuery.ajax({
		type: "POST",
		url: link+'wp-content/plugins/liveFeeds/ajax/unSpam.php',
		data:{feedID:feedID,format:'raw'},
		success:function(resp){
			jQuery(event).parent().parent().remove();
			toastr.success("feeds successfully Un Spamed");
			}
		});
	}
</script>
