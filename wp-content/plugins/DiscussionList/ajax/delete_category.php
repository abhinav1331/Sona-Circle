<?php 
include('../../../../wp-config.php');
global $wpdb;
$data_attr = $_POST['data_attr'];
$getMainCate = $wpdb->get_results("SELECT * FROM `im_discussion_category` WHERE `id` = $data_attr");
$parenteCat = $getMainCate[0]->id;
$wpdb->query("DELETE FROM `im_discussion_category` WHERE `id` = $data_attr");

$childArr = array();
$getChildCat = $wpdb->get_results("SELECT * FROM `im_discussion_category` WHERE `parent_id;` = $data_attr");
foreach ($getChildCat as $key => $value) {

	$wpdb->query("DELETE FROM `im_discussion_category` WHERE `id` = $value->id");
	$wpdb->query("DELETE FROM `im_discussion_rel` WHERE `cat_id` = $value->id");
	$childArr[] = $value->id;
}
array_push($childArr, $parenteCat);

$postArr  = array();
foreach ($childArr as $key => $valueChil) {
	$getChildCat = $wpdb->get_results("SELECT * FROM `im_discussion_rel` WHERE `cat_id` = $valueChil");
	foreach ($getChildCat as $key => $value) {
		$postArr[] = $value->dis_id;
		$wpdb->query("UPDATE `im_discussion` SET `status` = 0 WHERE `id` = $value->dis_id");
	}
	
}
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
</table>