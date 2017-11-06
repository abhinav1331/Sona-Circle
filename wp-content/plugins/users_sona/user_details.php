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
$user_id = $_GET['user_id'];
$first_name = get_user_meta($user_id , "first_name" , true);
 ?>
 <h1><?php echo $first_name; ?></h1>
   <ul class="nav nav-tabs usr_dtls">
    <li class="active"><a data-toggle="tab" href="#Experiance">Experiance</a></li>
    <li><a data-toggle="tab" href="#Skills">Skills</a></li>
    <li><a data-toggle="tab" href="#Language">Language</a></li>
    <li><a data-toggle="tab" href="#Education">Education</a></li>
    <li><a data-toggle="tab" href="#Interest">Interest</a></li>
  </ul>

    <div class="tab-content">
    <div id="Experiance" class="tab-pane fade in active">
      <h3>Experiance</h3>
      <table class="table-hover table-striped" style="width:70%;">
        <thead>
          <tr>
            <th>S.no.</th>
            <th>Title</th>
            <th>Start Date</th>
            <th>End Date</th>
            <th>Is Present</th>
          </tr>
        </thead>
        <tbody>
          <?php 
          $experiance1 = 1;
          foreach( $wpdb->get_results("SELECT * FROM `im_experiance` WHERE `user_id` = $user_id") as $key => $row)  {
           ?>
          <tr>
            <td><?php echo $experiance1; ?></td>
            <td><?php echo $row->title; ?></td>
            <td><?php echo $row->start_date; ?></td>
            <td><?php if($row->end_date == "1970-01-01") { echo "Nill"; } else { echo $row->end_date; } ?></td>
            <td><?php echo $row->is_present; ?></td>
          </tr>
          <?php $experiance1++; } ?>
        </tbody>
      </table>
    </div>
    <div id="Skills" class="tab-pane fade">
      <h3>Skills</h3>
     
      <table class="table-hover table-striped" style="width:70%;">
        <thead>
          <tr>
            <th>S.no.</th>
            <th>Title</th>
          </tr>
        </thead>
        <tbody>
          <?php 
          $experiance1 = 1;
          foreach( $wpdb->get_results("SELECT * FROM `im_skills` WHERE `user_id` = $user_id") as $key => $row)  {
           ?>
          <tr>
            <td><?php echo $experiance1; ?></td>
            <td><?php echo $row->name; ?></td>
          </tr>
          <?php $experiance1++; } ?>
        </tbody>
      </table>
    </div>
    <div id="Language" class="tab-pane fade">
      <h3>Language</h3>
      
      <table class="table-hover table-striped" style="width:70%;">
        <thead>
          <tr>
            <th>S.no.</th>
            <th>Title</th>
          </tr>
        </thead>
        <tbody>
          <?php 
          $experiance1 = 1;
          foreach( $wpdb->get_results("SELECT * FROM `im_language` WHERE `user_id` = $user_id") as $key => $row)  {
           ?>
          <tr>
            <td><?php echo $experiance1; ?></td>
            <td><?php echo $row->name; ?></td>
          </tr>
          <?php $experiance1++; } ?>
        </tbody>
      </table>
    </div>
    <div id="Education" class="tab-pane fade">
      <h3>Education</h3>
      <table class="table-hover table-striped" style="width:70%;">
        <thead>
          <tr>
            <th>S.no.</th>
            <th>Title</th>
            <th>Details</th>
            <th>Start Date</th>
            <th>End Date</th>
            <th>Is Present</th>
          </tr>
        </thead>
        <tbody>
          <?php 
          $experiance1 = 1;
          foreach( $wpdb->get_results("SELECT * FROM `im_education` WHERE `user_id` = $user_id") as $key => $row)  {
           ?>
          <tr>
            <td><?php echo $experiance1; ?></td>
            <td><?php echo $row->title; ?></td>
            <td><?php echo $row->course_name; ?></td>
            <td><?php echo $row->start_date; ?></td>
            <td><?php if($row->end_date == "1970-01-01") { echo "Nill"; } else { echo $row->end_date; } ?></td>
            <td><?php echo $row->is_present; ?></td>
          </tr>
          <?php $experiance1++; } ?>
        </tbody>
      </table>
    </div>

    <div id="Interest" class="tab-pane fade">
      <h3>Interest</h3>
       <table class="table-hover table-striped" style="width:70%;">
        <thead>
          <tr>
            <th>S.no.</th>
            <th>Title</th>
          </tr>
        </thead>
        <tbody>
          <?php 
          $experiance1 = 1;
          foreach( $wpdb->get_results("SELECT * FROM `im_interests` WHERE `user_id` = $user_id") as $key => $row)  {
           ?>
          <tr>
            <td><?php echo $experiance1; ?></td>
            <td><?php echo $row->name; ?></td>
          </tr>
          <?php $experiance1++; } ?>
        </tbody>
      </table>
    </div>
  </div>