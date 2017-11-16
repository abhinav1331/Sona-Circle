<?php 
error_reporting(E_ALL);
ini_set('display_errors', 1);
/*
* Template Name: About Us Page Template
*/
get_header('menu');
$pagesClass = new pagesClass();
global $post;
while ( have_posts() ) : the_post();

//Data Collection
$image_id = $pagesClass->getBasicFields($post->ID , "_thumbnail_id" , "page");
$banner_text = $pagesClass->getBasicFields($post->ID , "banner_text" , "page");
$blysty_first = $pagesClass->getBasicFields($post->ID , "blysty_first" , "page");
$blysty_second = $pagesClass->getBasicFields($post->ID , "blysty_second" , "page");
$what_is_a_blysty = $pagesClass->getBasicFields($post->ID , "what_is_a_blysty" , "page");
$home_blysty_page = $pagesClass->getBasicFields($post->ID , "home_blysty_page" , "page");
$what_is_a_blyst = $pagesClass->getBasicFields($post->ID , "what_is_a_blyst" , "page");
$blysty_board_details = $pagesClass->getBasicFields($post->ID , "blysty_board_details" , "page");
$what_is_a_blyst_image = $pagesClass->getBasicFields($post->ID , "what_is_a_blyst_image" , "page");


$url = $pagesClass->getImageSrc($image_id);
//Data Collection



?>
<section class="inner-banner" style="background-image: url(<?php if ( $url != "" ) {echo $url;} else { echo "http://placehold.it/1920x618&amp;text=No image found"; } ?>);">
	<div class="container-fluid">
		<div class="innerBannerWrapper">
			<div class="innerBannerContainer">
				<h1><?php echo $banner_text; ?></h1>
			</div>
		</div>
	</div>
</section>

<section>
	<div class="container-fluid">
		<div class="sectionPad">
			<div class="row">
				<div class="col-md-offset-1 col-md-4">
					<div class="imagesWrapper">
						<div class="images">
							<img src="<?php echo $blysty_first; ?>" alt="section1">
							<img src="<?php echo $blysty_second; ?>" alt="section2">
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="con">
						<?php the_content(); ?>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<section>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-offset-1 col-md-10">
				<div class="gray-section sectionPad">
					<div class="graySectionWrapper">
						<?php echo $what_is_a_blysty; ?>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<section>
	<div class="container-fluid">
		<div class="sectionPad">
			<div class="row">
				<div class="col-md-offset-1 col-md-3">
					<?php echo $home_blysty_page; ?>
				</div>
				<div class="col-md-4 text-center">
					<img src="<?php echo esc_url( get_template_directory_uri() ); ?>/assets/images/section3.jpg" alt="section3">
				</div>
				<div class="col-md-3">
					<?php echo $what_is_a_blyst; ?>
				</div>
			</div>
		</div>
	</div>
</section>

<section class="bgImg" style="background-image: url('<?php echo esc_url( get_template_directory_uri() ); ?>/assets/images/section4.jpg');">
	<div class="container-fluid">
		<div class="sectionPad">
			<div class="row">
				<div class="col-md-offset-5 col-md-6">
					<div class="rowTable text-center">
						<h2>The world's catalogue of ideas</h2>
						<a href="<?php echo esc_url( get_permalink(7) ); ?>" class="custom-btn big-btn">join blysty</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<section>
	<div class="container-fluid">
		<div class="sectionPad">
			<div class="row">
				<div class="col-md-offset-1 col-md-10">
					<?php echo $blysty_board_details; ?>
				</div>
			</div>
		</div>
	</div>
</section>
<?php
endwhile; wp_reset_query();	
get_footer('menu');