<?php 
/*
* Template Name: Categories Details Page Template
*/
get_header('main');
$Pins = new Pins();
$categoryId = $_GET['categoryId'];
$user = wp_get_current_user();
$countPins = $Pins->countPinsCat($user->ID , 1 , $categoryId);
?>
<div class="home index page-wraspper">
	<div class="container-fluid">
		<div class="post-gallery">
			<div class="post-list grid">
				<?php if ($countPins != 0){ ?>
					<?php $myExecutionPins = $Pins->viewPinsCat($user->ID , 1, $categoryId); ?>
				<?php } else {
					?>
					<h1>No Pins Found</h1>
					<?php
				} ?>
			</div>
		</div>
	</div>
</div>
<input type="hidden" name="myPagination" value="1">
<?php 
	if($countPins == "20") {
		?>
			<div class="footer_section"><div class="loader"><img width="100" src="http://i.imgur.com/2Sdtwfj.gif" alt=""><input type="hidden" name="myscrollCount" value=""></div></div>
		<?php
	}
 ?>
<?php 
get_footer('main');
?>