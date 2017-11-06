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
<div class="initialres">
	
	<form>
	  Latitude:   <input name="lat" type="text" value="">
	  Longitude:  <input name="lng" type="text" value="">
	  <input id="geocomplete" type="text" placeholder="Type in an address" size="90" />
	  <input id="find" type="button" value="find" />
	</form>
	    
	<div class="map_canvas"></div>
	<input type="text" name="miles" class="form-control" placeholder="Miles" value="30">
	<button type="button" class="btn btn-success" onclick="findRecords()">Find Feeds</button>
</div>

<div class="tableResult"></div>
<script src="http://maps.googleapis.com/maps/api/js?sensor=false&amp;libraries=places"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="<?php echo $plugin_url; ?>js/bootstrap.min.js"></script>
<script src="<?php echo $plugin_url; ?>js/jquery.validate.js"></script>
<script src="<?php echo $plugin_url; ?>js/form.js"></script>
<script src="<?php echo $plugin_url; ?>js/toastr.js"></script>
<script src="//cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>
<script src="<?php echo $plugin_url; ?>js/custom.js"></script>
<script>
	jQuery(document).ready(function(){
	    jQuery('#myTable').DataTable();
	});
</script>
<script src="<?php echo $plugin_url; ?>js/logger.js"></script>
<script src="<?php echo $plugin_url; ?>js/jquery.geocomplete.js"></script>
<script>
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
    </script>