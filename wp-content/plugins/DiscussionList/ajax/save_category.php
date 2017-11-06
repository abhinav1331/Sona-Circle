<?php 
include('../../../../wp-config.php');
global $wpdb;
$city = $_POST['city'];
$parentCategory = $_POST['parentCategory'];
	$countt = $wpdb->get_var("SELECT count(`name`) FROM `im_discussion_category` where `name`='$city' AND `parent_id` = $parentCategory");
	if($countt == 0)
	{
		$wpdb->insert( 'im_discussion_category', array(
		'name' => $city,
		'parent_id' => $parentCategory )
		);
		?>
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
</table><?php
	}
	else
	{
		echo "1";
		die();
	}
		