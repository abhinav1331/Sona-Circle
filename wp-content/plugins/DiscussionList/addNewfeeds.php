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
<?php 
wp_enqueue_script('jquery');
// This will enqueue the Media Uploader script
wp_enqueue_media();
// And let's not forget the script we wrote earlier
wp_enqueue_script('custom.js');
	$getCurrentCourseId = $_GET['editcourseIdd'];
 ?>
<div class="box-container">
	<div class="bx-innr">
		<h1>Add New feeds</h1> 
		<form action="" id="myForm">
			<textarea name="description" id="" cols="30" rows="10" class="form-control"></textarea>
			<input type="button" name="upload-btn" onclick="after_btn(1)" id="after-upload-btn" class="btn btn-primary after-upload-btn" value="Upload Image">
			<input type="text" name="attachmentId" value="">
			<input type="submit" value="Submit" class="btn btn-success">
		</form>
	</div>
</div>
<script>
		function after_btn(e)
		{
		var btnClk = e;
		// var htmlstring = jQuery(this).html();
		var image = wp.media({ 
			title: 'Upload Image',
			// mutiple: true if you want to upload multiple files at once
			multiple: false
		}).open()
		.on('select', function(e){
			// This will return the selected image from the Media Uploader, the result is an object
			var uploaded_image = image.state().get('selection').first();
			// We convert uploaded_image to a JSON object to make accessing it easier
			// Output to the console uploaded_image
			var image_url = uploaded_image.toJSON().url;
			// Let's assign the url value to the input field
			jQuery("input[name='attachmentId']").val(image_url);
		});
		}
		
</script>