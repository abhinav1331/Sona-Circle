<?php
/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package WordPress
 * @subpackage Twenty_Seventeen
 * @since 1.0
 * @version 1.0
 */

?><!DOCTYPE html>
<html <?php language_attributes(); ?> class="no-js no-svg">
<head>
<meta charset="<?php bloginfo( 'charset' ); ?>">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="profile" href="http://gmpg.org/xfn/11">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<?php wp_head(); ?>
    <link href="<?php echo esc_url( get_template_directory_uri() ); ?>/assets/css/custom_style.css" rel="stylesheet">
    
</head>

<body <?php body_class(); ?>>
    <div class="logo_div">
<a class="logo" href="<?php echo site_url(); ?>"><img src="<?php echo esc_url( get_template_directory_uri() ); ?>/assets/images/logo.png" alt="logo"></a> 
        </div>