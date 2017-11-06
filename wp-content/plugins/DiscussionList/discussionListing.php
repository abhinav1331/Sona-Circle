<?php
include('../wp-config.php');
global $wpdb;
$plugin_url = plugin_dir_url( __FILE__ );
?>
<link rel='stylesheet' href='<?php echo $plugin_url; ?>css/style.css' type='text/css'/>
<link rel='stylesheet' href='<?php echo $plugin_url; ?>css/bootstrap.min.css' type='text/css'/>
<script src="<?php echo $plugin_url; ?>js/bootstrap.min.js"></script>
<script src="<?php echo $plugin_url; ?>js/jquery.validate.js"></script>
<script src="<?php echo $plugin_url; ?>js/form.js"></script>
<script src="<?php echo $plugin_url; ?>js/custom.js"></script>
<?php
if($_GET['req']=="view_cities")
{
include('view_cities.php'); 
}
else if($_GET['req']=="add_cities")
{	
include('add_cities.php');
}
else
{
?>
<script>
jQuery(document).ready(function(){
jQuery('.select-option').each(function(){
	jQuery(this).click(function(){
		var data_attr = jQuery(this).data('attribute');
		window.location.href="admin.php?page=cities&req="+data_attr;	
	})
	});
	});
</script>
<div class="box-container">
<div class="bx-innr">
	<h1>Add Category</h1>
	<form role="form" id="addcity" action="" method="post">
<table class="table table-striped view-all">
<tr>
<th>Category Name</th>
<th>Parent Category</th>
<th>Save</th>
</tr>
<tr>
<td><input type="text" placeholder="Enter Category" class="form-control" id="name" name="city"/></th>
<td>
	<select name="parentCategory" id="">
		<option value="0">Select Parent Category</option>
		<?php 
			$getParentCat = $wpdb->get_results("SELECT * FROM `im_discussion_category` WHERE `parent_id` = 0");
		 ?>
		 <?php foreach ($getParentCat as $key => $value): ?>
		 	<option value="<?php echo $value->id; ?>"><?php echo $value->name; ?></option>
		 <?php endforeach ?>
	</select>
</th>
<td><input type="submit" value="Save City" class="btn btn-primary add_city" /></td>
<td><div class="loader_section" style="display:none;"></div></td>
</tr>
</table>
</form>
<div class="message-section" style="display:none;"></div>
</div>
<div class="bx-innr">
	<h1>Category Listing</h1>
	<div class="section-table-details">
<table class="table table-striped view-details">
<tbody>
<tr>
<th>S.no</th>
<th>Category Name</th>
<th>Parent Category</th>
<th>Delete</th>
</tr>
<?php 
$i=1;
foreach( $wpdb->get_results("SELECT * FROM `im_discussion_category`") as $key => $row) {
	if($row->parent_id != 0) {
		$getparent = $wpdb->get_results("SELECT * FROM `im_discussion_category` WHERE `id` = $row->parent_id");
		$getParentName = $getparent[0]->name;
	} else {

		$getParentName = "-";
	}
	?>
<tr>
<td><?php echo $i; ?></th>
<td><p><?php echo $row->name; ?></p></td>
<td><p><?php echo $getParentName ?></p></td>
<td><input type="Button" id="Delete_city" value="Delete Category" class="btn btn-danger delete_city" onclick="delete_row(this , '<?php echo $row->id; ?>')"/></td>
<td><div class="loader_section" style="display:none;"></div></td>
</tr>
<?php $i++; } ?>
</tbody>
</tbody>
</table>
</div>
</div>

<?php
  }