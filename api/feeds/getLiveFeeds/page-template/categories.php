<?php 
/*
* Template Name: Categories Page Template
*/
get_header('main');
$Pins = new Pins();
$user = wp_get_current_user();
$countPins = $Pins->countPins($user->ID , 1);
?>
<div class="categories-temp page-wraspper">
	<div class="categories-wrapper">
		<div class="contant-area">
			<div class="section-area lgray">
				<div class="container-fluid">
					<div class="row">
						<div class="col-sm-offset-1 col-sm-10">
							<h3>Explore and Discover Blysts</h3>
							<div class="row">
								<div class="col-sm-5">
									<div class="categorie-wrapper">
										<div class="categories-list">
											<div class="categories-header">
												<h4>Categories</h4>
											</div>
											<div class="categories">
												<ul>
													<?php echo $Pins->getMyCategories(); ?>
												</ul>
											</div>
										</div>
									</div>
								</div>
								<div class="col-sm-7">
									<div class="row">
										<?php echo $Pins->getPopularCategories(); ?>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<?php 
get_footer('main');
?>