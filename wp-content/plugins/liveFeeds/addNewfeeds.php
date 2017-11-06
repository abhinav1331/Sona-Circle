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
<link rel='stylesheet' href='<?php echo $plugin_url; ?>css/styles.css' type='text/css'/>
<link rel='stylesheet' href='//cdn.datatables.net/1.10.15/css/jquery.dataTables.min.css' type='text/css'/>
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link type="text/css" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500">
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

<div class="box-container">
	<div class="bx-innr">
		<h1>Add New feeds</h1> 
		<form action="" id="myForm">
			<textarea name="description" id="" cols="30" rows="10" class="form-control"></textarea>
			<input type="button" name="upload-btn" onclick="after_btn(1)" id="after-upload-btn" class="btn btn-primary after-upload-btn" value="Upload Image">
			<input type="text" name="attachmentId" value="">
			<input type="submit" value="Submit" class="btn btn-success">
			  Latitude:   <input name="lat" type="text" value="">
			  Longitude:  <input name="lng" type="text" value="">
			  <input id="geocomplete" type="text" placeholder="Type in an address" size="90" />
			  <input id="find" type="button" value="find" onclick="getMyDetails();"/>
		</form>
	    
	<div class="map_canvas"></div>
	</div>
</div>
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
<script src="http://maps.googleapis.com/maps/api/js?sensor=false&amp;libraries=places"></script>
<script src="<?php echo $plugin_url; ?>js/logger.js"></script>
<script src="<?php echo $plugin_url; ?>js/jquery.geocomplete.js"></script>
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
		 jQuery(function(){
        jQuery("#geocomplete").geocomplete({
          map: ".map_canvas",
          details: "form"
        });
     
      });

      function findRecords() {
      	var lat = jQuery("input[name='lat']").val();
      	var lng = jQuery("input[name='lng']").val();
      	var miles = jQuery("input[name='miles']").val();
      	jQuery.ajax({
			async: true,
			type: "POST",
			url: '<?php echo site_url(); ?>/wp-content/plugins/liveFeeds/ajax/showFeeds.php',		
			dataType: 'html',
			cache: false,
			data:{lat:lat,lng:lng,miles:miles,format:'raw'},
			success:function(resp){
				toastr.success("Success");
				jQuery(".initialres").hide();
				jQuery(".tableResult").empty().append(resp);
				jQuery('#myTable').DataTable();
			}
			
		});
      }
      /*function getMyDetails() {
      	var val = jQuery("#geocomplete").val();
      	if(val != "") {
      		jQuery(".map_canvas").show();
      	}
      }*/
    /*  jQuery(document).ready(function(){
      	jQuery(".map_canvas").hide();
      });*/
</script>