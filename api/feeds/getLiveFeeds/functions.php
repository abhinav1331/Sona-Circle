<?php
session_start();
/**
 * Twenty Seventeen functions and definitions
 *
 * @link https://developer.wordpress.org/themes/basics/theme-functions/
 *
 * @package WordPress
 * @subpackage Twenty_Seventeen
 * @since 1.0
 */

/**
 * Twenty Seventeen only works in WordPress 4.7 or later.
 */
if ( version_compare( $GLOBALS['wp_version'], '4.7-alpha', '<' ) ) {
	require get_template_directory() . '/inc/back-compat.php';
	return;
}

/**
 * Sets up theme defaults and registers support for various WordPress features.
 *
 * Note that this function is hooked into the after_setup_theme hook, which
 * runs before the init hook. The init hook is too late for some features, such
 * as indicating support for post thumbnails.
 */
function twentyseventeen_setup() {
	/*
	 * Make theme available for translation.
	 * Translations can be filed at WordPress.org. See: https://translate.wordpress.org/projects/wp-themes/twentyseventeen
	 * If you're building a theme based on Twenty Seventeen, use a find and replace
	 * to change 'twentyseventeen' to the name of your theme in all the template files.
	 */
	load_theme_textdomain( 'twentyseventeen' );

	// Add default posts and comments RSS feed links to head.
	add_theme_support( 'automatic-feed-links' );

	/*
	 * Let WordPress manage the document title.
	 * By adding theme support, we declare that this theme does not use a
	 * hard-coded <title> tag in the document head, and expect WordPress to
	 * provide it for us.
	 */
	add_theme_support( 'title-tag' );

	/*
	 * Enable support for Post Thumbnails on posts and pages.
	 *
	 * @link https://developer.wordpress.org/themes/functionality/featured-images-post-thumbnails/
	 */
	add_theme_support( 'post-thumbnails' );

	add_image_size( 'twentyseventeen-featured-image', 2000, 1200, true );

	add_image_size( 'twentyseventeen-thumbnail-avatar', 100, 100, true );

	// Set the default content width.
	$GLOBALS['content_width'] = 525;

	// This theme uses wp_nav_menu() in two locations.
	register_nav_menus( array(
		'top'    => __( 'Top Menu', 'twentyseventeen' ),
		'social' => __( 'Social Links Menu', 'twentyseventeen' ),
	) );

	/*
	 * Switch default core markup for search form, comment form, and comments
	 * to output valid HTML5.
	 */
	add_theme_support( 'html5', array(
		'comment-form',
		'comment-list',
		'gallery',
		'caption',
	) );

	/*
	 * Enable support for Post Formats.
	 *
	 * See: https://codex.wordpress.org/Post_Formats
	 */
	add_theme_support( 'post-formats', array(
		'aside',
		'image',
		'video',
		'quote',
		'link',
		'gallery',
		'audio',
	) );

	// Add theme support for Custom Logo.
	add_theme_support( 'custom-logo', array(
		'width'       => 250,
		'height'      => 250,
		'flex-width'  => true,
	) );

	// Add theme support for selective refresh for widgets.
	add_theme_support( 'customize-selective-refresh-widgets' );

	/*
	 * This theme styles the visual editor to resemble the theme style,
	 * specifically font, colors, and column width.
 	 */
	add_editor_style( array( 'assets/css/editor-style.css', twentyseventeen_fonts_url() ) );

	// Define and register starter content to showcase the theme on new sites.
	$starter_content = array(
		'widgets' => array(
			// Place three core-defined widgets in the sidebar area.
			'sidebar-1' => array(
				'text_business_info',
				'search',
				'text_about',
			),

			// Add the core-defined business info widget to the footer 1 area.
			'sidebar-2' => array(
				'text_business_info',
			),

			// Put two core-defined widgets in the footer 2 area.
			'sidebar-3' => array(
				'text_about',
				'search',
			),
		),

		// Specify the core-defined pages to create and add custom thumbnails to some of them.
		'posts' => array(
			'home',
			'about' => array(
				'thumbnail' => '{{image-sandwich}}',
			),
			'contact' => array(
				'thumbnail' => '{{image-espresso}}',
			),
			'blog' => array(
				'thumbnail' => '{{image-coffee}}',
			),
			'homepage-section' => array(
				'thumbnail' => '{{image-espresso}}',
			),
		),

		// Create the custom image attachments used as post thumbnails for pages.
		'attachments' => array(
			'image-espresso' => array(
				'post_title' => _x( 'Espresso', 'Theme starter content', 'twentyseventeen' ),
				'file' => 'assets/images/espresso.jpg', // URL relative to the template directory.
			),
			'image-sandwich' => array(
				'post_title' => _x( 'Sandwich', 'Theme starter content', 'twentyseventeen' ),
				'file' => 'assets/images/sandwich.jpg',
			),
			'image-coffee' => array(
				'post_title' => _x( 'Coffee', 'Theme starter content', 'twentyseventeen' ),
				'file' => 'assets/images/coffee.jpg',
			),
		),

		// Default to a static front page and assign the front and posts pages.
		'options' => array(
			'show_on_front' => 'page',
			'page_on_front' => '{{home}}',
			'page_for_posts' => '{{blog}}',
		),

		// Set the front page section theme mods to the IDs of the core-registered pages.
		'theme_mods' => array(
			'panel_1' => '{{homepage-section}}',
			'panel_2' => '{{about}}',
			'panel_3' => '{{blog}}',
			'panel_4' => '{{contact}}',
		),

		// Set up nav menus for each of the two areas registered in the theme.
		'nav_menus' => array(
			// Assign a menu to the "top" location.
			'top' => array(
				'name' => __( 'Top Menu', 'twentyseventeen' ),
				'items' => array(
					'link_home', // Note that the core "home" page is actually a link in case a static front page is not used.
					'page_about',
					'page_blog',
					'page_contact',
				),
			),

			// Assign a menu to the "social" location.
			'social' => array(
				'name' => __( 'Social Links Menu', 'twentyseventeen' ),
				'items' => array(
					'link_yelp',
					'link_facebook',
					'link_twitter',
					'link_instagram',
					'link_email',
				),
			),
		),
	);

	/**
	 * Filters Twenty Seventeen array of starter content.
	 *
	 * @since Twenty Seventeen 1.1
	 *
	 * @param array $starter_content Array of starter content.
	 */
	$starter_content = apply_filters( 'twentyseventeen_starter_content', $starter_content );

	add_theme_support( 'starter-content', $starter_content );
}
add_action( 'after_setup_theme', 'twentyseventeen_setup' );

/**
 * Set the content width in pixels, based on the theme's design and stylesheet.
 *
 * Priority 0 to make it available to lower priority callbacks.
 *
 * @global int $content_width
 */
function twentyseventeen_content_width() {

	$content_width = $GLOBALS['content_width'];

	// Get layout.
	$page_layout = get_theme_mod( 'page_layout' );

	// Check if layout is one column.
	if ( 'one-column' === $page_layout ) {
		if ( twentyseventeen_is_frontpage() ) {
			$content_width = 644;
		} elseif ( is_page() ) {
			$content_width = 740;
		}
	}

	// Check if is single post and there is no sidebar.
	if ( is_single() && ! is_active_sidebar( 'sidebar-1' ) ) {
		$content_width = 740;
	}

	/**
	 * Filter Twenty Seventeen content width of the theme.
	 *
	 * @since Twenty Seventeen 1.0
	 *
	 * @param int $content_width Content width in pixels.
	 */
	$GLOBALS['content_width'] = apply_filters( 'twentyseventeen_content_width', $content_width );
}
add_action( 'template_redirect', 'twentyseventeen_content_width', 0 );

/**
 * Register custom fonts.
 */
function twentyseventeen_fonts_url() {
	$fonts_url = '';

	/*
	 * Translators: If there are characters in your language that are not
	 * supported by Libre Franklin, translate this to 'off'. Do not translate
	 * into your own language.
	 */
	$libre_franklin = _x( 'on', 'Libre Franklin font: on or off', 'twentyseventeen' );

	if ( 'off' !== $libre_franklin ) {
		$font_families = array();

		$font_families[] = 'Libre Franklin:300,300i,400,400i,600,600i,800,800i';

		$query_args = array(
			'family' => urlencode( implode( '|', $font_families ) ),
			'subset' => urlencode( 'latin,latin-ext' ),
		);

		$fonts_url = add_query_arg( $query_args, 'https://fonts.googleapis.com/css' );
	}

	return esc_url_raw( $fonts_url );
}

/**
 * Add preconnect for Google Fonts.
 *
 * @since Twenty Seventeen 1.0
 *
 * @param array  $urls           URLs to print for resource hints.
 * @param string $relation_type  The relation type the URLs are printed.
 * @return array $urls           URLs to print for resource hints.
 */
function twentyseventeen_resource_hints( $urls, $relation_type ) {
	if ( wp_style_is( 'twentyseventeen-fonts', 'queue' ) && 'preconnect' === $relation_type ) {
		$urls[] = array(
			'href' => 'https://fonts.gstatic.com',
			'crossorigin',
		);
	}

	return $urls;
}
add_filter( 'wp_resource_hints', 'twentyseventeen_resource_hints', 10, 2 );

/**
 * Register widget area.
 *
 * @link https://developer.wordpress.org/themes/functionality/sidebars/#registering-a-sidebar
 */
function twentyseventeen_widgets_init() {
	register_sidebar( array(
		'name'          => __( 'Blog Sidebar', 'twentyseventeen' ),
		'id'            => 'sidebar-1',
		'description'   => __( 'Add widgets here to appear in your sidebar on blog posts and archive pages.', 'twentyseventeen' ),
		'before_widget' => '<section id="%1$s" class="widget %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<h2 class="widget-title">',
		'after_title'   => '</h2>',
	) );

	register_sidebar( array(
		'name'          => __( 'Footer 1', 'twentyseventeen' ),
		'id'            => 'sidebar-2',
		'description'   => __( 'Add widgets here to appear in your footer.', 'twentyseventeen' ),
		'before_widget' => '<section id="%1$s" class="widget %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<h2 class="widget-title">',
		'after_title'   => '</h2>',
	) );

	register_sidebar( array(
		'name'          => __( 'Footer 2', 'twentyseventeen' ),
		'id'            => 'sidebar-3',
		'description'   => __( 'Add widgets here to appear in your footer.', 'twentyseventeen' ),
		'before_widget' => '<section id="%1$s" class="widget %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<h2 class="widget-title">',
		'after_title'   => '</h2>',
	) );
}
add_action( 'widgets_init', 'twentyseventeen_widgets_init' );

/**
 * Replaces "[...]" (appended to automatically generated excerpts) with ... and
 * a 'Continue reading' link.
 *
 * @since Twenty Seventeen 1.0
 *
 * @param string $link Link to single post/page.
 * @return string 'Continue reading' link prepended with an ellipsis.
 */
function twentyseventeen_excerpt_more( $link ) {
	if ( is_admin() ) {
		return $link;
	}

	$link = sprintf( '<p class="link-more"><a href="%1$s" class="more-link">%2$s</a></p>',
		esc_url( get_permalink( get_the_ID() ) ),
		/* translators: %s: Name of current post */
		sprintf( __( 'Continue reading<span class="screen-reader-text"> "%s"</span>', 'twentyseventeen' ), get_the_title( get_the_ID() ) )
	);
	return ' &hellip; ' . $link;
}
add_filter( 'excerpt_more', 'twentyseventeen_excerpt_more' );

/**
 * Handles JavaScript detection.
 *
 * Adds a `js` class to the root `<html>` element when JavaScript is detected.
 *
 * @since Twenty Seventeen 1.0
 */
function twentyseventeen_javascript_detection() {
	echo "<script>(function(html){html.className = html.className.replace(/\bno-js\b/,'js')})(document.documentElement);</script>\n";
}
add_action( 'wp_head', 'twentyseventeen_javascript_detection', 0 );

/**
 * Add a pingback url auto-discovery header for singularly identifiable articles.
 */
function twentyseventeen_pingback_header() {
	if ( is_singular() && pings_open() ) {
		printf( '<link rel="pingback" href="%s">' . "\n", get_bloginfo( 'pingback_url' ) );
	}
}
add_action( 'wp_head', 'twentyseventeen_pingback_header' );

/**
 * Display custom color CSS.
 */
function twentyseventeen_colors_css_wrap() {
	if ( 'custom' !== get_theme_mod( 'colorscheme' ) && ! is_customize_preview() ) {
		return;
	}

	require_once( get_parent_theme_file_path( '/inc/color-patterns.php' ) );
	$hue = absint( get_theme_mod( 'colorscheme_hue', 250 ) );
?>
	<style type="text/css" id="custom-theme-colors" <?php if ( is_customize_preview() ) { echo 'data-hue="' . $hue . '"'; } ?>>
		<?php echo twentyseventeen_custom_colors_css(); ?>
	</style>
<?php }
add_action( 'wp_head', 'twentyseventeen_colors_css_wrap' );

/**
 * Enqueue scripts and styles.
 */
function twentyseventeen_scripts() {
	// Add custom fonts, used in the main stylesheet.
	wp_enqueue_style( 'twentyseventeen-fonts', twentyseventeen_fonts_url(), array(), null );

	// Theme stylesheet.
	wp_enqueue_style( 'twentyseventeen-style', get_stylesheet_uri() );

	// Load the dark colorscheme.
	if ( 'dark' === get_theme_mod( 'colorscheme', 'light' ) || is_customize_preview() ) {
		wp_enqueue_style( 'twentyseventeen-colors-dark', get_theme_file_uri( '/assets/css/colors-dark.css' ), array( 'twentyseventeen-style' ), '1.0' );
	}

	// Load the Internet Explorer 9 specific stylesheet, to fix display issues in the Customizer.
	if ( is_customize_preview() ) {
		wp_enqueue_style( 'twentyseventeen-ie9', get_theme_file_uri( '/assets/css/ie9.css' ), array( 'twentyseventeen-style' ), '1.0' );
		wp_style_add_data( 'twentyseventeen-ie9', 'conditional', 'IE 9' );
	}

	// Load the Internet Explorer 8 specific stylesheet.
	wp_enqueue_style( 'twentyseventeen-ie8', get_theme_file_uri( '/assets/css/ie8.css' ), array( 'twentyseventeen-style' ), '1.0' );
	wp_style_add_data( 'twentyseventeen-ie8', 'conditional', 'lt IE 9' );

	// Load the html5 shiv.
	wp_enqueue_script( 'html5', get_theme_file_uri( '/assets/js/html5.js' ), array(), '3.7.3' );
	wp_script_add_data( 'html5', 'conditional', 'lt IE 9' );

	wp_enqueue_script( 'twentyseventeen-skip-link-focus-fix', get_theme_file_uri( '/assets/js/skip-link-focus-fix.js' ), array(), '1.0', true );

	$twentyseventeen_l10n = array(
		'quote'          => twentyseventeen_get_svg( array( 'icon' => 'quote-right' ) ),
	);

	if ( has_nav_menu( 'top' ) ) {
		wp_enqueue_script( 'twentyseventeen-navigation', get_theme_file_uri( '/assets/js/navigation.js' ), array( 'jquery' ), '1.0', true );
		$twentyseventeen_l10n['expand']         = __( 'Expand child menu', 'twentyseventeen' );
		$twentyseventeen_l10n['collapse']       = __( 'Collapse child menu', 'twentyseventeen' );
		$twentyseventeen_l10n['icon']           = twentyseventeen_get_svg( array( 'icon' => 'angle-down', 'fallback' => true ) );
	}

	wp_enqueue_script( 'twentyseventeen-global', get_theme_file_uri( '/assets/js/global.js' ), array( 'jquery' ), '1.0', true );

	wp_enqueue_script( 'jquery-scrollto', get_theme_file_uri( '/assets/js/jquery.scrollTo.js' ), array( 'jquery' ), '2.1.2', true );

	wp_localize_script( 'twentyseventeen-skip-link-focus-fix', 'twentyseventeenScreenReaderText', $twentyseventeen_l10n );

	if ( is_singular() && comments_open() && get_option( 'thread_comments' ) ) {
		wp_enqueue_script( 'comment-reply' );
	}
}
add_action( 'wp_enqueue_scripts', 'twentyseventeen_scripts' );

/**
 * Add custom image sizes attribute to enhance responsive image functionality
 * for content images.
 *
 * @since Twenty Seventeen 1.0
 *
 * @param string $sizes A source size value for use in a 'sizes' attribute.
 * @param array  $size  Image size. Accepts an array of width and height
 *                      values in pixels (in that order).
 * @return string A source size value for use in a content image 'sizes' attribute.
 */
function twentyseventeen_content_image_sizes_attr( $sizes, $size ) {
	$width = $size[0];

	if ( 740 <= $width ) {
		$sizes = '(max-width: 706px) 89vw, (max-width: 767px) 82vw, 740px';
	}

	if ( is_active_sidebar( 'sidebar-1' ) || is_archive() || is_search() || is_home() || is_page() ) {
		if ( ! ( is_page() && 'one-column' === get_theme_mod( 'page_options' ) ) && 767 <= $width ) {
			 $sizes = '(max-width: 767px) 89vw, (max-width: 1000px) 54vw, (max-width: 1071px) 543px, 580px';
		}
	}

	return $sizes;
}
add_filter( 'wp_calculate_image_sizes', 'twentyseventeen_content_image_sizes_attr', 10, 2 );

/**
 * Filter the `sizes` value in the header image markup.
 *
 * @since Twenty Seventeen 1.0
 *
 * @param string $html   The HTML image tag markup being filtered.
 * @param object $header The custom header object returned by 'get_custom_header()'.
 * @param array  $attr   Array of the attributes for the image tag.
 * @return string The filtered header image HTML.
 */
function twentyseventeen_header_image_tag( $html, $header, $attr ) {
	if ( isset( $attr['sizes'] ) ) {
		$html = str_replace( $attr['sizes'], '100vw', $html );
	}
	return $html;
}
add_filter( 'get_header_image_tag', 'twentyseventeen_header_image_tag', 10, 3 );

/**
 * Add custom image sizes attribute to enhance responsive image functionality
 * for post thumbnails.
 *
 * @since Twenty Seventeen 1.0
 *
 * @param array $attr       Attributes for the image markup.
 * @param int   $attachment Image attachment ID.
 * @param array $size       Registered image size or flat array of height and width dimensions.
 * @return string A source size value for use in a post thumbnail 'sizes' attribute.
 */
function twentyseventeen_post_thumbnail_sizes_attr( $attr, $attachment, $size ) {
	if ( is_archive() || is_search() || is_home() ) {
		$attr['sizes'] = '(max-width: 767px) 89vw, (max-width: 1000px) 54vw, (max-width: 1071px) 543px, 580px';
	} else {
		$attr['sizes'] = '100vw';
	}

	return $attr;
}
add_filter( 'wp_get_attachment_image_attributes', 'twentyseventeen_post_thumbnail_sizes_attr', 10, 3 );

/**
 * Use front-page.php when Front page displays is set to a static page.
 *
 * @since Twenty Seventeen 1.0
 *
 * @param string $template front-page.php.
 *
 * @return string The template to be used: blank if is_home() is true (defaults to index.php), else $template.
 */
function twentyseventeen_front_page_template( $template ) {
	return is_home() ? '' : $template;
}
add_filter( 'frontpage_template',  'twentyseventeen_front_page_template' );

/**
 * Implement the Custom Header feature.
 */
require get_parent_theme_file_path( '/inc/custom-header.php' );

/**
 * Custom template tags for this theme.
 */
require get_parent_theme_file_path( '/inc/template-tags.php' );

/**
 * Additional features to allow styling of the templates.
 */
require get_parent_theme_file_path( '/inc/template-functions.php' );

/**
 * Customizer additions.
 */
require get_parent_theme_file_path( '/inc/customizer.php' );

/**
 * SVG icons functions and filters.
 */
require get_parent_theme_file_path( '/inc/icon-functions.php' );

remove_filter('widget_text_content', 'wpautop');
// remove_filter( 'the_content', 'wpautop' );
remove_filter( 'the_excerpt', 'wpautop' );
function add_my_js() {

    
    wp_enqueue_script('jquery_iq',  'https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js');
    wp_enqueue_script('mCustomScrollbar_iq',  'http://malihu.github.io/custom-scrollbar/jquery.mCustomScrollbar.concat.min.js');
    wp_enqueue_script('boot_js_iq',  esc_url( get_template_directory_uri() ). '/assets/js/bootstrap.min.js');
    wp_enqueue_script('plugins',  esc_url( get_template_directory_uri() ). '/assets/js/plugins.js');
    wp_enqueue_script('validate',  esc_url( get_template_directory_uri() ). '/assets/js/jquery.validate.js');
    wp_enqueue_script('form',  esc_url( get_template_directory_uri() ). '/assets/js/form.js');
    wp_enqueue_script('toaster_js_iq',  esc_url( get_template_directory_uri() ). '/assets/js/toastr.js');
    wp_enqueue_script('void_autocompletejs_iq',  esc_url( get_template_directory_uri() ). '/assets/js/void_autocomplete.js');
    wp_enqueue_script('js_js_iq',  'https://code.jquery.com/ui/1.12.1/jquery-ui.js');
    wp_enqueue_script('app',  esc_url( get_template_directory_uri() ). '/assets/js/app.js');
    wp_enqueue_script('appVisibles',  esc_url( get_template_directory_uri() ). '/assets/js/jquery.visible.js');
    wp_enqueue_script('custom',  esc_url( get_template_directory_uri() ). '/assets/js/custom.js');
   
}
add_action('wp_footer', 'add_my_js');

function add_my_css() {

    
   wp_enqueue_style('font_bly',  'https://fonts.googleapis.com/css?family=Merriweather:400,700|Open+Sans:400,600,700');
    wp_enqueue_style('awesme_blysty', 'https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css');
    wp_enqueue_style('mCustomScrollbar_blysty', 'http://malihu.github.io/custom-scrollbar/jquery.mCustomScrollbar.min.css');
    wp_enqueue_style('bootstraps',  esc_url( get_template_directory_uri() ). '/assets/css/bootstrap.min.css');
    wp_enqueue_style('jQuery_ui_jscss',   'https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css');
    wp_enqueue_style('toastrsss',  esc_url( get_template_directory_uri() ). '/assets/css/toastr.css');
    wp_enqueue_style('void_autocomplete',  esc_url( get_template_directory_uri() ). '/assets/css/void_autocomplete.css');
    if ( !is_page('about-us') && !is_page('privacy-policy')  && !is_page('terms-of-service') ) {
 	   wp_enqueue_style('style',  esc_url( get_template_directory_uri() ). '/assets/css/style.css');
    } else {
 	   wp_enqueue_style('menu-style',  esc_url( get_template_directory_uri() ). '/assets/css/menu-style.css');
    }
   
}
add_action('wp_enqueue_scripts', 'add_my_css');


add_action( 'template_redirect', 'redirect_to_specific_page' );

function redirect_to_specific_page() {

if ( is_page('home') && ! is_user_logged_in() ) {

wp_redirect( esc_url( get_permalink(7) ), 301 ); 
  exit;
    }
if ( is_page('login') && is_user_logged_in() ) {

wp_redirect( site_url(), 301 ); 
  exit;
    }
if ( is_page('my-account') && !is_user_logged_in() ) {

wp_redirect( esc_url( get_permalink(7) ), 301 ); 
  exit;
    }
if ( is_page('my-profile') && !is_user_logged_in() ) {

wp_redirect( esc_url( get_permalink(7) ), 301 ); 
  exit;
    }
if ( is_page('blysty-boards') && !is_user_logged_in() ) {

wp_redirect( esc_url( get_permalink(7) ), 301 ); 
  exit;
    }
if ( is_page('user-profile') && !is_user_logged_in() ) {

wp_redirect( esc_url( get_permalink(7) ), 301 ); 
  exit;
    }
}



/***************************************Login Form************************************/
function wpLoginForm() 
{

  	
  if ( isset( $_POST['wpLoginForm_nonce'] ) && wp_verify_nonce( $_POST['wpLoginForm_nonce'], 'wpLoginForm_html' ) ) 
  {
	$username = sanitize_email($_POST['uname']);
	$password = $_POST['upass'];
	
	if ( email_exists( $username ) ) 
	{

	   $user = get_user_by( 'email', $username );
       /*
	   echo "<pre>";
       print_r($user);
	   echo "</pre>";
	   */
	   if ( $user && wp_check_password( $password, $user->data->user_pass, $user->ID) ) 
		{
		$login_data = array();
		$login_data['user_login'] = $username;
		$login_data['user_password'] = $password;
		$login_data['remember'] = $remember;
		wp_signon( $login_data, false );
	    
		echo "3"; 

		}
		else 
		{

		echo "2";

		}
	   
	   
	}
	else
	{
		echo "1";
	}
  
   die(); 

  }
 
}
add_action( 'wp_ajax_wpLoginForm', 'wpLoginForm' );
add_action( 'wp_ajax_nopriv_wpLoginForm', 'wpLoginForm' );


function wpjobusRegisterForm() 
{

  if ( isset( $_POST['wpjobusRegister_nonce'] ) && wp_verify_nonce( $_POST['wpjobusRegister_nonce'], 'wpjobusRegister_html' ) ) 
  {
  
	
	$email = sanitize_email($_POST['emailA']);
	$password = $_POST['pass'];
	
	
	if (username_exists($email)) {

	  echo "1";

	}
	else if( email_exists( $email )) {

	  echo "2";

	}
	else
	{
		
    $user_id=wp_create_user( $email, $password, $email );
	update_user_meta($user_id , "first_name" , $name);
    
	$from = get_option('admin_email');
    $headers = 'From: '.$from . "\r\n";
    $subject = "Registration successful";
    $msg = "Registration successful.\nYour login details\nUsername: $email\nPassword: $password";
    wp_mail( $email, $subject, $msg, $headers );
	
	
    $login_data = array();
    $login_data['user_login'] = $email;
    $login_data['user_password'] = $password;
    wp_signon( $login_data, false );
	echo "3";	
		
	}	
	
  
  die(); 

 }
}
add_action( 'wp_ajax_wpjobusRegisterForm', 'wpjobusRegisterForm' );
add_action( 'wp_ajax_nopriv_wpjobusRegisterForm', 'wpjobusRegisterForm' );
/***************************************Login Form************************************/

add_action('after_setup_theme', 'remove_admin_bar');

function remove_admin_bar() {
	if (!current_user_can('administrator') && !is_admin()) {
		show_admin_bar(false);
	}
}


Class Pins {


	function viewPins($userId , $offSet) { 

		$Pins = new Pins();
		global $wpdb;
		if($offSet==1) {
			$offSet=0;
		} else {
			$offSet = ( $offSet - 1 ) * 20; 
		}
		$getRes = $wpdb->get_results("SELECT * FROM `im_pins` WHERE `pin_status` = 1 ORDER BY `id` DESC LIMIT 20 OFFSET $offSet");
		foreach ($getRes as $key => $value) {
			$myName = get_user_meta($value->pin_author , "first_name" , true);
			$getCatName = $wpdb->get_results("SELECT * FROM `im_category_pins` WHERE `id` = $value->category");
			$user_info = get_userdata($value->pin_author);
			$profileImage = get_user_meta($value->pin_author , "profileImage" , true);
			?>
			<div class="grid-item post-wrapper">
					<div class="post">
						<figure class="post-tumb">
							<img src="<?php echo $value->attachment; ?>" alt="Post">
						</figure>
						<div class="post-details">
							<div class="post-header">
								<a href="javascript:void(0)" onclick="getMyBlystDetails(<?php echo $value->id; ?>)"><span><?php echo count(json_decode($value->blyst_content)) ?></span><h3><?php echo $value->name; ?></h3></a>
							</div>

							<div class="post-info">
								<div class="avatar">
									<figure style="background-image: url(<?php echo $profileImage; ?>);"></figure>
								</div>
								<div class="post-arthur">
									<a href="<?php echo esc_url( get_permalink(23) ); ?>/?username=<?php echo $user_info->data->user_login; ?>"><h4><?php echo $myName; ?></h4></a>
									<h5><?php echo $getCatName[0]->category_name; ?></h5>
								</div>
							</div>
							<div class="liks">
								<div class="counter">
									<a href="javascript:void(0)" onclick="likeTheBlyst(<?php echo $value->id ?>,this)" class="<?php if($Pins->currentUserLikked($value->id) == 1) { echo "active"; } ?>"><i class="fa fa-heart"></i> <span><?php echo $Pins->getPinsLike($value->id) ?></span></a>
								</div>
							</div>
						</div>
					</div>
				</div>
			<?php
		}
	} 
	function viewPinsCat($userId , $offSet , $catID) { 

		$Pins = new Pins();
		global $wpdb;
		if($offSet==1) {
			$offSet=0;
		} else {
			$offSet = ( $offSet - 1 ) * 20; 
		}
		$getRes = $wpdb->get_results("SELECT * FROM `im_pins` WHERE `pin_status` = 1 AND `category` = $catID ORDER BY `id` DESC LIMIT 20 OFFSET $offSet");
		foreach ($getRes as $key => $value) {
			$myName = get_user_meta($value->pin_author , "first_name" , true);
			$getCatName = $wpdb->get_results("SELECT * FROM `im_category_pins` WHERE `id` = $value->category");
			$user_info = get_userdata($value->pin_author);
			$profileImage = get_user_meta($value->pin_author , "profileImage" , true);
			?>
			<div class="grid-item post-wrapper">
					<div class="post">
						<figure class="post-tumb">
							<img src="<?php echo $value->attachment; ?>" alt="Post">
						</figure>
						<div class="post-details">
							<div class="post-header">
								<a href="javascript:void(0)" onclick="getMyBlystDetails(<?php echo $value->id; ?>)"><span><?php echo count(json_decode($value->blyst_content)) ?></span><h3><?php echo $value->name; ?></h3></a>
							</div>

							<div class="post-info">
								<div class="avatar">
									<figure style="background-image: url(<?php echo $profileImage; ?>);"></figure>
								</div>
								<div class="post-arthur">
									<a href="<?php echo esc_url( get_permalink(23) ); ?>/?username=<?php echo $user_info->data->user_login; ?>"><h4><?php echo $myName; ?></h4></a>
									<h5><?php echo $getCatName[0]->category_name; ?></h5>
								</div>
							</div>
							<div class="liks">
								<div class="counter">
									<a href="javascript:void(0)" onclick="likeTheBlyst(<?php echo $value->id ?>,this)" class="<?php if($Pins->currentUserLikked($value->id) == 1) { echo "active"; } ?>"><i class="fa fa-heart"></i> <span><?php echo $Pins->getPinsLike($value->id) ?></span></a>
								</div>
							</div>
						</div>
					</div>
				</div>
			<?php
		}
	} 

	function countPins($userId , $offSet) { 
		global $wpdb;
		if($offSet==1) {
			$offSet=0;
		} else {
			$offSet = ( $offSet - 1 ) * 20; 
		}
		$getRes = $wpdb->get_results("SELECT * FROM `im_pins` WHERE `pin_status` = 1 ORDER BY `id` DESC LIMIT 20 OFFSET $offSet");
		return count($getRes);
	}
	function countPinsCat($userId , $offSet , $catID) { 
		global $wpdb;
		if($offSet==1) {
			$offSet=0;
		} else {
			$offSet = ( $offSet - 1 ) * 20; 
		}
		$getRes = $wpdb->get_results("SELECT * FROM `im_pins` WHERE `pin_status` = 1 AND `category` = $catID ORDER BY `id` DESC LIMIT 20 OFFSET $offSet");
		return count($getRes);
	}

	function getPinsLike($pinID) {
		global $wpdb;
		$getRes = $wpdb->get_var("SELECT count(`id`) FROM `im_pins_like` WHERE `pin_id` = $pinID");
		return $getRes;
	}
	function currentUserLikked($pinID) {
		global $wpdb;
		$user = wp_get_current_user();
		$getRes = $wpdb->get_var("SELECT count(`id`) FROM `im_pins_like` WHERE `pin_id` = $pinID AND `user_id` = $user->ID");
		return $getRes;
	}

	function LikePinByUser($pinID) {

		global $wpdb;
		$user = wp_get_current_user();
		$getRes = $wpdb->get_var("SELECT count(`id`) FROM `im_pins_like` WHERE `pin_id` = $pinID AND `user_id` = $user->ID");
		if($getRes == 1) {
			$wpdb->query("DELETE FROM `im_pins_like` WHERE `pin_id` = $pinID AND `user_id` = $user->ID");
			return 0;
		} else {
			$wpdb->insert( 'im_pins_like', array(
				'pin_id' => $pinID,
				'user_id' => $user->ID)
			);
			return 1;
		}
	}
	function editMyPins($pinID) {

		global $wpdb;
		$getMyPins = $wpdb->get_results("SELECT * FROM `im_pins` WHERE `id` = $pinID");
			foreach ($getMyPins as $key => $value) {
			$myCatID = $wpdb->get_results("SELECT * FROM `im_category_pins` WHERE `id` = $value->category");
			$name = $myCatID[0]->category_name;
			?>
			<h2>Edit this Blyst</h2>

			<form role="form" id="update_blyst" action="" method="post" enctype="multipart/form-data">
				<div class="form-row">
					<span>Name</span>
					<div class="form-group name-gruop">
						<input class="form-control" type="text" name="name" placeholder="Like: Favorite Ice cream flavors" value="<?php echo $value->name; ?>">
					</div>
				</div>

				<div class="form-row">
					<span>Category</span>
					<div class="form-group category-gruop">
						<input class="form-control" type="text" name="cate" placeholder="Search" value="<?php echo $name; ?>">
					</div>
					<span>Private</span>
					<div class="form-group chck-group">
						<input class="hide" type="checkbox" name="private" <?php if($value->visibility == 0) { echo "checked"; } ?>>
						<div class="checkbox"></div>
					</div>
				</div>

				<div class="form-row">
					<span>Change Picture!</span>
					<ul class="addPic">
						<li>+ Use this picture from <a href="#">BlystyBrowser Button</a></li>
						<li>+ Search Google Images with <a href="#">BlystyBrowser</a></li>
					</ul>

					<div class="newAvatar">
						<figure style="background-image: url('<?php echo $value->attachment; ?>');"></figure>
					</div>
				</div>

				<div class="image-section">
					<div class="upload">
						<span>Upload a Picture</span>
						<!-- <button class="green-btn costom-btn fle">Choose</button> -->
						<input class="green-btn costom-btn fle" type="button" value="Choose">
						<input type="file" class="hide">
					</div>
					<span>or</span>
					<div class="searchfor">
						<span>Save from Website URL</span>
						<div class="form-group"><input class="form-control" type="text" name="searchfor" placeholder="https://www."></div>
					</div>
				</div>

				<div class="form-row">
					<span></span>
					<p><strong>Blyst Contents</strong> Add up to 50!</p>

					<ul class="content listHeight list">
						<?php 
						$myContent = $value->blyst_content;
						$mycontentArra = json_decode($myContent);
						foreach ($mycontentArra as $key => $valueAr) { 
							?>
								<li>
									<div class="form-group"><input class="form-control" type="text" name="count[]" value="<?php echo $valueAr; ?>"></div>
								</li>
							<?php
						}
						 ?>
					</ul>
				</div>

				<div class="form-footer">
					<a href="#" class="red-btn costom-btn" data-dismiss="modal">
						<svg version="1.1" class="time-icon" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:cc="http://creativecommons.org/ns#" xmlns:sodipodi="http://sodipodi.sourceforge.net/DTD/sodipodi-0.dtd" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:inkscape="http://www.inkscape.org/namespaces/inkscape" xmlns:svg="http://www.w3.org/2000/svg" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="14px" height="14px" viewBox="9.35 6.25 12.3 12.301" enable-background="new 9.35 6.25 12.3 12.301" xml:space="preserve">
							<g transform="translate(0,-952.36218)">
								<path d="M21.287,958.975c-0.484-0.484-1.27-0.484-1.754,0l-4.033,4.033l-4.033-4.033c-0.484-0.484-1.27-0.484-1.754,0 c-0.484,0.484-0.484,1.269,0,1.753l4.034,4.033l-4.034,4.034c-0.484,0.484-0.484,1.27,0,1.754c0.484,0.484,1.27,0.484,1.754,0 l4.033-4.034l4.033,4.034c0.484,0.484,1.27,0.484,1.754,0s0.484-1.27,0-1.754l-4.033-4.034l4.033-4.033 C21.771,960.245,21.771,959.459,21.287,958.975L21.287,958.975z"></path>
							</g>
						</svg>
						<span>Cancel</span>
					</a>
					<input type="hidden" value="<?php echo $pinID; ?>" name="pin_id">
					<button type="button" class="green-btn costom-btn" onclick="formSubmitUpdate();">
						<svg version="1.1" class="check-icon" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16px" height="14px" viewBox="3.625 2.731 23.75 19.337" enable-background="new 3.625 2.731 23.75 19.337" xml:space="preserve">
							<path d="M25.232,3.016c-0.38-0.38-1.004-0.38-1.385,0L11.563,15.302c-0.38,0.38-1.004,0.38-1.385,0l-3.026-3.026 c-0.381-0.38-1.004-0.38-1.385,0l-1.855,1.857c-0.381,0.381-0.381,1.004,0,1.385l6.267,6.265c0.381,0.381,1.004,0.381,1.385,0 L27.089,6.257c0.381-0.381,0.381-1.004,0-1.385L25.232,3.016z"></path>
						</svg>
						<span>Save</span>
					</button>
				</div>
			</form>
		<?php
	}
}
	function updateBlyst($post , $files) {
		global $wpdb;
		require_once(ABSPATH . 'wp-admin/includes/media.php');
		require_once(ABSPATH . 'wp-admin/includes/file.php');
		require_once(ABSPATH . 'wp-admin/includes/image.php');

	$pin_id = $post['pin_id'];
	$name = $post['name'];
	$cateID = $post['cateID'];
	$private = $post['private'];
	echo $searchfor = $post['searchfor'];
	$user = wp_get_current_user();
	$userID = $user->ID;
	$nameUser = get_user_meta($userID , "first_name" , true);
	$profileImage = get_user_meta($userID , "profileImage" , true);
	if($profileImage == "") {
		$profileImage = "http://placehold.it/240x240&amp;text=No image found";
	} else {
		$profileImage = $profileImage; 
	}
	$upload_dir = wp_upload_dir();
	$date = new DateTime();
	$string = $userID.$date->getTimestamp();
	$lastUpdated = $date->getTimestamp();
	$blyst_content = json_encode($post['count']);
	if($private == "on") {
		$tatus = 0;
	} else {
		$status = 1;
	}
	$file_data = getimagesize($_FILES['fillee']['tmp_name']);         
	if(is_array($file_data) && strpos($file_data['mime'],'image') !== false || count($_FILES) == 0)  {
	    if(count($_FILES["fillee"]) != 0) {
			$target_file = $upload_dir['path']."/".$string.'.jpg';
			move_uploaded_file($_FILES["fillee"]["tmp_name"], $target_file);
			$url = $upload_dir['url']."/".$string.".jpg";	
			$wpdb->query("UPDATE `im_pins` SET `attachment` = $url WHERE `id` = $pin_id");
		} else {
			if($searchfor != "") {
				$post_id = "";
				$desc = "";
				$image = media_sideload_image($searchfor, $post_id, $desc);
				$test_tmpimg = explode("src='" , $image);
				$test_tmp = explode("'" , $test_tmpimg[1]);
				echo $url = $test_tmp[0];
				$wpdb->query("UPDATE `im_pins` SET `attachment` = '$url' WHERE `id` = $pin_id");
			} else {
				$url = "";
			}
		}

	/*	$wpdb->insert( 'im_pins', array(
			'name' => $name,
			'category' => $cateID,
			'visibility' => $status,
			'attachment' => $url,
			'blyst_content' => $blyst_content,
			'board_id' => 0,
			'pin_author' => $userID,
			'pin_status' => 0,
			'pin_created' => $lastUpdated)
		);*/
		$wpdb->query("UPDATE `im_pins` SET `name` = '$name' WHERE `id` = $pin_id");
		$wpdb->query("UPDATE `im_pins` SET `visibility` = '$status' WHERE `id` = $pin_id");
		$wpdb->query("UPDATE `im_pins` SET `blyst_content` = '$blyst_content' WHERE `id` = $pin_id");
		$wpdb->query("UPDATE `im_pins` SET `category` = '$cateID' WHERE `id` = $pin_id");
		 /*$lastid = $wpdb->insert_id;*/
	} else {
		echo "Invalid Image Format";
	}
	}

	function getRandomPin($count) {
		global $wpdb;
		$Pins = new Pins();
		// $count = 4;
		$getMyPins = $wpdb->get_results("SELECT * FROm `im_pins` ORDER BY RAND() LIMIT $count"); 
		$i = 1;
		$users = new users();
		foreach ($getMyPins as $key => $value) {
			$myName = get_user_meta($value->pin_author , "first_name" , true);
			$getCatName = $wpdb->get_results("SELECT * FROM `im_category_pins` WHERE `id` = $value->category");
			$user_info = get_userdata($value->pin_author);
			$profileImage = get_post_meta($value->pin_author , "profileImage" , true);
		/*	echo "<pre>";
				print_r($value);
			echo "</pre>";*/
			if($count != 1) {
				?>
					<div class="grid-item post-wrapper">
				<?php
			}
			?>
			<div class="post hello<?php echo $i; ?>">
				<figure class="post-tumb" style="background-image: url('<?php echo $value->attachment; ?>');"></figure>
				<div class="post-details">
					<div class="post-header">
						<a href="javascript:void(0)" onclick="getMyBlystDetails(<?php echo $value->id; ?>)"><span><?php echo count(json_decode($value->blyst_content)) ?></span><h3><?php echo $value->name; ?></h3></a>
					</div>

					<div class="post-info">
						<div class="avatar">
							<figure style="background-image: url('<?php echo $users->viewUserDetails($value->pin_author , "Image"); ?>');"></figure>
						</div>
						<div class="post-arthur">
							<a href="<?php echo esc_url( get_permalink(23) ); ?>/?username=<?php echo $user_info->data->user_login; ?>"><h4><?php echo $myName; ?></h4></a>
									<h5><?php echo $getCatName[0]->catagory_name; ?></h5>
						</div>
					</div>
					<div class="liks">
						<div class="counter">
							<a href="javascript:void(0)"><i class="fa fa-heart"></i> <?php echo $Pins->getPinsLike($value->id) ?></a>
						</div>
					</div>
				</div>
			</div>
			<div class="blystyList popupinner">
				<div class="blystyListhead">
					<div class="chooseBlystyImg">
						<figure style="background-image: url('<?php echo $value->attachment; ?>');"></figure>
						<div class="post-details">
							<div class="post-header">
								<a href="javascript:void(0)" onclick="getMyBlystDetails(<?php echo $value->id; ?>)"><span><?php echo count(json_decode($value->blyst_content)) ?></span><h3><?php echo $value->name; ?></h3></a>
							</div>

							<div class="post-info">
								<div class="avatar">
									<figure style="background-image: url('<?php echo $users->viewUserDetails($value->pin_author , "Image"); ?>');"></figure>
								</div>
								<div class="post-arthur">
									<a href="<?php echo esc_url( get_permalink(23) ); ?>/?username=<?php echo $user_info->data->user_login; ?>"><h4><?php echo $myName; ?></h4></a>
								</div>
								<div class="liks">
									<div class="counter">
										<a href="javascript:void(0)"><i class="fa fa-heart"></i> <?php echo $Pins->getPinsLike($value->id) ?></a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="blystyListContent">
					<ul>
						<?php 
							$myContent = json_decode($value->blyst_content);
							foreach ($myContent as $key => $valueContent) {
								?>
									<li><?php echo $valueContent; ?></li>
								<?php
							}
						 ?>
					</ul>
				</div>
				</div>

				<!-- <div class="action">
				<a href="#" class="green-btn">
					<svg version="1.1" class="share-icon" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16px" height="14px" viewBox="7.175 5.252 16.65 14.296" enable-background="new 7.175 5.252 16.65 14.296" xml:space="preserve">
						<g>
							<path d="M23.825,10.733l-6.403-5.481v2.621C15.185,8.098,7.225,9.594,7.175,19.548c0,0,1.93-6.271,10.247-6.5v3.167L23.825,10.733z"></path>
						</g>
					</svg>
					<span>Share</span>
				</a>
				<?php if ($users->UserFollowStatus($value->pin_author) != 2): ?>
				<a href="javascript:void(0)" class="green-btn" <?php if($users->UserFollowStatus($value->pin_author) != "Following") { ?> onclick="followTheUser('<?php echo $value->pin_author; ?>' , this);" <?php } ?>>
					<svg version="1.1" class="plus-icon" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:cc="http://creativecommons.org/ns#" xmlns:sodipodi="http://sodipodi.sourceforge.net/DTD/sodipodi-0.dtd" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:inkscape="http://www.inkscape.org/namespaces/inkscape" xmlns:svg="http://www.w3.org/2000/svg" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="12px" height="12px" viewBox="9.3 6.2 12.4 12.399" enable-background="new 9.3 6.2 12.4 12.399" xml:space="preserve">
						<g transform="translate(0,-952.36218)">
							<path d="M15.5,958.562c-0.822,0-1.488,0.666-1.488,1.488v3.224h-3.224c-0.822,0-1.488,0.666-1.488,1.488s0.667,1.488,1.488,1.488 h3.224v3.223c0,0.822,0.666,1.488,1.488,1.488c0.822,0,1.488-0.666,1.488-1.487v-3.224h3.224c0.821,0,1.488-0.667,1.488-1.488 s-0.667-1.488-1.488-1.488h-3.224v-3.224C16.988,959.228,16.322,958.562,15.5,958.562L15.5,958.562z"></path>
						</g>
					</svg>
					<span><?php echo $users->UserFollowStatus($value->pin_author); ?></span>
				</a>
				<?php endif ?>
				<a href="javascript:void(0)" onclick="likeTheBlystBelow(<?php echo $value->id ?>,this)" class="green-btn <?php if($Pins->currentUserLikked($value->id) == 1) { echo "active"; } ?>">
					<svg version="1.1" class="heart-icon" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="12px" height="10px" viewBox="6.938 4.886 17.167 15.054" enable-background="new 6.938 4.886 17.167 15.054" xml:space="preserve">
						<path d="M11.954,4.886c-1.29,0-2.579,0.496-3.546,1.463c-1.959,1.959-1.959,5.159,0,7.118l6.696,6.299 c0.124,0.1,0.273,0.174,0.422,0.174s0.297-0.05,0.421-0.174l6.696-6.299c0.967-0.967,1.463-2.257,1.463-3.546 s-0.496-2.579-1.463-3.546c-0.868-0.868-1.984-1.265-3.15-1.265c-1.413,0-2.852,0.595-3.918,1.637L15.55,6.771 c0,0-0.025,0-0.025-0.025C14.483,5.803,13.218,4.886,11.954,4.886L11.954,4.886z"></path>
					</svg>
					<span><?php if($Pins->currentUserLikked($value->id) == 1) { echo "Liked"; } else { echo "Like"; } ?></span>
				</a>
				<a href="javascript:void(0)" onclick="saveMyBlystNew('<?php echo $value->id; ?>')" class="green-btn">
					<svg version="1.1" class="download-icon" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="12px" height="12px" viewBox="10.044 6.944 10.912 11.16" enable-background="new 10.044 6.944 10.912 11.16" xml:space="preserve">
						<g>
							<g>
								<path d="M15.074,14.584l-2.892-2.929c-0.467-0.468,0.233-1.169,0.7-0.702l1.949,1.955c0.096,0.096,0.174,0.063,0.174-0.074V7.441 c0-0.275,0.222-0.498,0.495-0.498c0.275,0,0.495,0.223,0.495,0.498v5.394c0,0.136,0.077,0.17,0.174,0.074l1.949-1.955 c0.467-0.468,1.167,0.234,0.7,0.702l-2.874,2.925C15.704,14.827,15.314,14.828,15.074,14.584z M19.964,16.865v-1.737 c0-0.274,0.222-0.496,0.496-0.496s0.496,0.222,0.496,0.496v2.233c0,0.412-0.335,0.742-0.746,0.742h-9.42 c-0.41,0-0.746-0.333-0.746-0.742v-2.233c0-0.274,0.222-0.496,0.496-0.496s0.496,0.222,0.496,0.496v1.737 c0,0.135,0.111,0.246,0.248,0.246h8.432C19.852,17.111,19.964,17.002,19.964,16.865z"/>
							</g>
						</g>
					</svg>
					<span>Save</span>
				</a>
							</div> -->
			<?php
			if($count != 1) { ?></div><?php
		}
		$i++;
		}
	}
	function getMyBlystBoard($userID , $visibility) {
		global $wpdb;
		$i =1;
		$im_blyst_board = $wpdb->get_results("SELECT * FROM `im_blyst_board` WHERE `user_id` = $userID AND `visibility` = $visibility");
		foreach ($im_blyst_board as $key => $value) {
			$myBlystName = $value->name;
			$blystID = $value->id;
			$varMYboardCount = $wpdb->get_var("SELECT count(`id`) FROM `im_pins` WHERE `board_id` = $blystID ");
			if($varMYboardCount != 0) {
			?>
			<div class="grid-item post-wrapper <?php if($i == 1) { echo  'active'; } ?>">
				<div class="wrapper">
					<div class="post-inner">
						<?php 
							$myBlystPinOFBoard = $wpdb->get_results("SELECT * FROM `im_pins` WHERE `board_id` = $blystID AND `pin_author` = $userID LIMIT 3");
							foreach ($myBlystPinOFBoard as $key => $blystBroad) {
								?>
									<div class="post">
										<figure class="post-tumb" style="background-image: url('<?php echo $blystBroad->attachment; ?>');"></figure>
										<div class="post-details">
											<div class="post-header">
												<a href="javascript:void(0)" onclick="getMyBlystDetails(<?php echo $myBlystPinOFBoard[0]->id; ?>)"><span><?php echo count(json_decode($blystBroad->blyst_content)) ?></span><h3><?php echo $blystBroad->name; ?></h3></a>
											</div>
										</div>
									</div>
								<?php
							}
						 ?>
					</div>
					<div class="edit-container">
						<h4><?php echo $myBlystName; ?></h4>
						<?php if (!is_page('user-profile')): ?>
							<div class="link-con text-right">
								<a class="green-btn costom-btn" onclick="getMyBoard('<?php echo $value->id; ?>');" href="javascript:void(0)">Edit</a>
							</div>
						<?php endif ?>
						
					</div>
				</div>
			</div>
			<?php
			$i++;
			}
		}
	}

	function getBlystBoard($boardID) {

		global $wpdb;
		$user = wp_get_current_user();
		$getMyBoard = $wpdb->get_results("SELECT * FROM `im_blyst_board` WHERE `id` = $boardID");
		?>
		<h2>Edit BlystBoard</h2>
			<form role="form" id="update_board" action="" method="post" enctype="multipart/form-data">
				<div class="form-row">
					<span>Current Name</span>
					<div class="form-group name-gruop">
						<input class="form-control" type="text" name="nameOLDS" placeholder="Like: Favorite Ice cream flavors" value="<?php echo $getMyBoard[0]->name; ?>">
					</div>
				</div>
				<div class="form-row">
					<span>New Name</span>
					<div class="form-group name-gruop">
						<input type="hidden" name="myBoardID" value="<?php echo $getMyBoard[0]->id; ?>">
						<input class="form-control" type="text" name="nameNEW" placeholder="Like: Favorite Ice cream flavors">
					</div>
				</div>

				<div class="form-row">
					<span>Change Privacy</span>
					<div class="form-group chck-group offOn">
						<input class="hide" type="checkbox" name="private" value="yes" <?php if($getMyBoard[0]->visibility == 0) { echo "checked"; } ?>>
						<div class="checkbox"></div>
					</div>
				</div>

				<div class="form-row">
					<span>Delete this BlystBoard</span>
					<a href="javascript:void(0)" class="green-btn costom-btn md-btn" onclick="deleteMyBoard('<?php echo $getMyBoard[0]->id; ?>')">Delete</a>
				</div>

				<div class="form-footer">
					<a href="#" class="red-btn costom-btn" data-dismiss="modal">
						<svg version="1.1" class="time-icon" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:cc="http://creativecommons.org/ns#" xmlns:sodipodi="http://sodipodi.sourceforge.net/DTD/sodipodi-0.dtd" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:inkscape="http://www.inkscape.org/namespaces/inkscape" xmlns:svg="http://www.w3.org/2000/svg" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="14px" height="14px" viewBox="9.35 6.25 12.3 12.301" enable-background="new 9.35 6.25 12.3 12.301" xml:space="preserve">
							<g transform="translate(0,-952.36218)">
								<path d="M21.287,958.975c-0.484-0.484-1.27-0.484-1.754,0l-4.033,4.033l-4.033-4.033c-0.484-0.484-1.27-0.484-1.754,0 c-0.484,0.484-0.484,1.269,0,1.753l4.034,4.033l-4.034,4.034c-0.484,0.484-0.484,1.27,0,1.754c0.484,0.484,1.27,0.484,1.754,0 l4.033-4.034l4.033,4.034c0.484,0.484,1.27,0.484,1.754,0s0.484-1.27,0-1.754l-4.033-4.034l4.033-4.033 C21.771,960.245,21.771,959.459,21.287,958.975L21.287,958.975z"></path>
							</g>
						</svg>
						<span>Cancel</span>
					</a>
					<button type="button" class="green-btn costom-btn" onclick="formSubmitUpdate();">
						<svg version="1.1" class="check-icon" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16px" height="14px" viewBox="3.625 2.731 23.75 19.337" enable-background="new 3.625 2.731 23.75 19.337" xml:space="preserve">
							<path d="M25.232,3.016c-0.38-0.38-1.004-0.38-1.385,0L11.563,15.302c-0.38,0.38-1.004,0.38-1.385,0l-3.026-3.026 c-0.381-0.38-1.004-0.38-1.385,0l-1.855,1.857c-0.381,0.381-0.381,1.004,0,1.385l6.267,6.265c0.381,0.381,1.004,0.381,1.385,0 L27.089,6.257c0.381-0.381,0.381-1.004,0-1.385L25.232,3.016z"></path>
						</svg>
						<span>Save</span>
					</button>
				</div>
			</form>
		<?php

	}

	function updateMyBlyst($boardID , $updatedValue , $coumn) {
		global $wpdb;
		echo "UPDATE `im_blyst_board` SET `$coumn` = '$updatedValue' WHERE `id` = $boardID";
		$wpdb->query("UPDATE `im_blyst_board` SET `$coumn` = '$updatedValue' WHERE `id` = $boardID");
		return 1;
	}

	function deleteMyBoard($boardID) {
		global $wpdb;
		$wpdb->query("DELETE FROM `im_blyst_board` WHERE `id` = $boardID");
		return 1;
	}
	function getMyCategories() {
		global $wpdb;
		$getAllCate = $wpdb->get_results("SELECT * FROM `im_category_pins`");
		foreach ($getAllCate as $key => $value) {
			?>
				<li><a href="<?php echo esc_url( get_permalink(31) ); ?>/?categoryId=<?php echo $value->id; ?>"><?php echo $value->category_name; ?></a></li>
			<?php
		}
	}

	function getPopularCategories() {
		global $wpdb;
		$i=0;
		$getAllCate = $wpdb->get_results("SELECT * FROM `im_category_pins` ORDER BY RAND()");
		$myArra = array();
		$myArraPins = array();
		foreach ($getAllCate as $key => $value) {
			$getLatestPin = $wpdb->get_results("SELECT * FROM `im_pins` WHERE `category` = $value->id ORDER BY `ID` DESC LIMIT 1");
			if(!empty($getLatestPin) & $i<4) {
				$myArra[] = $value->id;
				$myArraPins[] = $getLatestPin[0]->id;
			?>
			<div class="col-sm-6 ourCateImage">
				<div class="img-wrapper">
					<input type="hidden" class="mySelectedCat" value='<?php echo $value->id ?>'>
					<input type="hidden" class="mySelectedCatEQ" value='<?php echo $i; ?>'>
					<input type="hidden" class="mySelectedPins" value='<?php echo $getLatestPin[0]->id ?>'>
					<figure>
						<figcaption style="background-image: url(<?php echo $getLatestPin[0]->attachment; ?>);"></figcaption>
						<legend><a href="<?php echo esc_url( get_permalink(31) ); ?>/?categoryId=<?php echo $value->id; ?>"><?php echo $value->category_name; ?></a></legend>
					</figure>
				</div>
			</div>
			<?php
			$i++;
			}
		}
		?>
		<?php
	}


	function getLatestPin($catID , $pinID , $order) {
		global $wpdb;
		$getLatestPin = $wpdb->get_results("SELECT * FROM `im_pins` WHERE `category` = $catID ORDER BY `ID` DESC LIMIT 1");
		if($getLatestPin[0]->id != $pinID) {
			$cateName = $wpdb->get_results("SELECT * FROM `im_category_pins` WHERE `id` = $catID");
			?>
				<div class="img-wrapper">
					<input type="hidden" class="mySelectedCat" value='<?php echo $catID?>'>
					<input type="hidden" class="mySelectedCatEQ" value='<?php echo $order?>'>
					<input type="hidden" class="mySelectedPins" value='<?php echo $pinID ?>'>
					<figure>
						<figcaption style="background-image: url(<?php echo $getLatestPin[0]->attachment; ?>);"></figcaption>
						<legend><a href="<?php echo esc_url( get_permalink(31) ); ?>/?categoryId=<?php echo $catID; ?>"><?php echo $cateName[0]->category_name; ?></a></legend>
					</figure>
				</div>
			<?php
		} else {
			return ;
		}

	}



	function getMyBlystDetails($pinID) {
		global $wpdb;
		$Pins = new Pins();
		$users = new users();
		$getMyPinDetails = $wpdb->get_results("SELECT * FROM `im_pins` WHERE `id` = $pinID");
			$user_info = get_userdata($getMyPinDetails[0]->pin_author);
			$myName = get_user_meta($getMyPinDetails[0]->pin_author , "first_name" , true);
			$profileImage = get_user_meta($getMyPinDetails[0]->pin_author , "profileImage" , true);
		?>
		<!-- <button type="button" class="close" data-dismiss="modal">&times;</button> -->
			<div class="blystyListhead">
				<div class="chooseBlystyImg">
					<figure style="background-image: url('<?php echo $getMyPinDetails[0]->attachment; ?>');"></figure>
					<div class="post-details">
						<div class="post-header">
							<a href="javascript:void(0)" onclick="getMyBlystDetails(<?php echo $getMyPinDetails[0]->id; ?>)"><span><?php echo count(json_decode($getMyPinDetails[0]->blyst_content)) ?></span><h3><?php echo $getMyPinDetails[0]->name; ?></h3></a>
						</div>

						<div class="post-info">
							<div class="avatar">
								<figure style="background-image: url('<?php echo $profileImage; ?>');"></figure>
							</div>
							<div class="post-arthur">
								<a href="<?php echo esc_url( get_permalink(23) ); ?>/?username=<?php echo $user_info->data->user_login; ?>"><h4><?php echo $myName; ?></h4></a>
							</div>
							<div class="liks">
								<div class="counter">
									<a href="javascript:void(0)" onclick="likeTheBlyst(<?php echo $getMyPinDetails[0]->id ?>,this)" class="<?php if($Pins->currentUserLikked($getMyPinDetails[0]->id) == 1) { echo "active"; } ?>"><i class="fa fa-heart"></i> <span><?php echo $Pins->getPinsLike($getMyPinDetails[0]->id) ?></span></a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="blystyListContent">
				<ul>
					<?php 
						$myContent = json_decode($getMyPinDetails[0]->blyst_content);
						foreach ($myContent as $key => $valueContent) {
							?>
								<li><?php echo $valueContent; ?></li>
							<?php
						}
					 ?>
				</ul>
			</div>

			<div class="action">
				<a href="#" class="green-btn">
					<svg version="1.1" class="share-icon" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16px" height="14px" viewBox="7.175 5.252 16.65 14.296" enable-background="new 7.175 5.252 16.65 14.296" xml:space="preserve">
						<g>
							<path d="M23.825,10.733l-6.403-5.481v2.621C15.185,8.098,7.225,9.594,7.175,19.548c0,0,1.93-6.271,10.247-6.5v3.167L23.825,10.733z"></path>
						</g>
					</svg>
					<span>Share</span>
				</a>
				<?php if ($users->UserFollowStatus($getMyPinDetails[0]->pin_author) != 2): ?>
				<a href="javascript:void(0)" class="green-btn" <?php if($users->UserFollowStatus($getMyPinDetails[0]->pin_author) != "Following") { ?> onclick="followTheUser('<?php echo $getMyPinDetails[0]->pin_author; ?>' , this);" <?php } ?>>
					<svg version="1.1" class="plus-icon" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:cc="http://creativecommons.org/ns#" xmlns:sodipodi="http://sodipodi.sourceforge.net/DTD/sodipodi-0.dtd" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:inkscape="http://www.inkscape.org/namespaces/inkscape" xmlns:svg="http://www.w3.org/2000/svg" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="12px" height="12px" viewBox="9.3 6.2 12.4 12.399" enable-background="new 9.3 6.2 12.4 12.399" xml:space="preserve">
						<g transform="translate(0,-952.36218)">
							<path d="M15.5,958.562c-0.822,0-1.488,0.666-1.488,1.488v3.224h-3.224c-0.822,0-1.488,0.666-1.488,1.488s0.667,1.488,1.488,1.488 h3.224v3.223c0,0.822,0.666,1.488,1.488,1.488c0.822,0,1.488-0.666,1.488-1.487v-3.224h3.224c0.821,0,1.488-0.667,1.488-1.488 s-0.667-1.488-1.488-1.488h-3.224v-3.224C16.988,959.228,16.322,958.562,15.5,958.562L15.5,958.562z"></path>
						</g>
					</svg>
					<span><?php echo $users->UserFollowStatus($getMyPinDetails[0]->pin_author); ?></span>
				</a>
				<?php endif ?>
				<a href="javascript:void(0)" onclick="likeTheBlystBelow(<?php echo $getMyPinDetails[0]->id ?>,this)" class="green-btn <?php if($Pins->currentUserLikked($getMyPinDetails[0]->id) == 1) { echo "active"; } ?>">
					<svg version="1.1" class="heart-icon" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="12px" height="10px" viewBox="6.938 4.886 17.167 15.054" enable-background="new 6.938 4.886 17.167 15.054" xml:space="preserve">
						<path d="M11.954,4.886c-1.29,0-2.579,0.496-3.546,1.463c-1.959,1.959-1.959,5.159,0,7.118l6.696,6.299 c0.124,0.1,0.273,0.174,0.422,0.174s0.297-0.05,0.421-0.174l6.696-6.299c0.967-0.967,1.463-2.257,1.463-3.546 s-0.496-2.579-1.463-3.546c-0.868-0.868-1.984-1.265-3.15-1.265c-1.413,0-2.852,0.595-3.918,1.637L15.55,6.771 c0,0-0.025,0-0.025-0.025C14.483,5.803,13.218,4.886,11.954,4.886L11.954,4.886z"></path>
					</svg>
					<span><?php if($Pins->currentUserLikked($getMyPinDetails[0]->id) == 1) { echo "Liked"; } else { echo "Like"; } ?></span>
				</a>
				<a href="javascript:void(0)" onclick="saveMyBlystNew('<?php echo $getMyPinDetails[0]->id; ?>')" class="green-btn">
					<svg version="1.1" class="download-icon" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="12px" height="12px" viewBox="10.044 6.944 10.912 11.16" enable-background="new 10.044 6.944 10.912 11.16" xml:space="preserve">
						<g>
							<g>
								<path d="M15.074,14.584l-2.892-2.929c-0.467-0.468,0.233-1.169,0.7-0.702l1.949,1.955c0.096,0.096,0.174,0.063,0.174-0.074V7.441 c0-0.275,0.222-0.498,0.495-0.498c0.275,0,0.495,0.223,0.495,0.498v5.394c0,0.136,0.077,0.17,0.174,0.074l1.949-1.955 c0.467-0.468,1.167,0.234,0.7,0.702l-2.874,2.925C15.704,14.827,15.314,14.828,15.074,14.584z M19.964,16.865v-1.737 c0-0.274,0.222-0.496,0.496-0.496s0.496,0.222,0.496,0.496v2.233c0,0.412-0.335,0.742-0.746,0.742h-9.42 c-0.41,0-0.746-0.333-0.746-0.742v-2.233c0-0.274,0.222-0.496,0.496-0.496s0.496,0.222,0.496,0.496v1.737 c0,0.135,0.111,0.246,0.248,0.246h8.432C19.852,17.111,19.964,17.002,19.964,16.865z"/>
							</g>
						</g>
					</svg>
					<span>Save</span>
				</a>
			</div>
		<?php

	}
}



Class users {

	function viewUserDetails($userId , $detail) {

		$user = get_user_by( 'ID', $userId );
		if($detail == "Email") {
			return $user->data->user_email;

		} elseif($detail == "Image") {

			$profileImage = get_user_meta($userId , "profileImage" , true); 
			if($profileImage == "") {
				return "http://placehold.it/1000x1000&amp;text=No image found";
			} else {
				return $profileImage;
			}

		} elseif($detail == "Password") {

			return "DefaultPassword";

		} elseif($detail == "Name") {

			return get_user_meta($userId , "first_name" , true);

		}
	}

	function myUserUpdateDetails($post , $files) {
		//defining Variables
		global $wpdb;
		$user = wp_get_current_user();
		$currentUserID = $user->ID;
		$upload_dir = wp_upload_dir();
		$date = new DateTime();
		$string = $date->getTimestamp();
		//defining Variables
		//myCode Function
		update_user_meta($currentUserID , "first_name" , $post['nameUser']);
		if($post['passUser'] != "" && $post['passUser'] != "DefaultPassword") {
			wp_set_password( $post['passUser'], $currentUserID );
		}
		if(!empty($files)) {
			$target_file = $upload_dir['path']."/".$string.'.jpg';
			move_uploaded_file($_FILES["img_file"]["tmp_name"], $target_file);
			$url = $upload_dir['url']."/".$string.".jpg";
			update_user_meta($currentUserID , "profileImage" , $url);
		}
		//myCode Function
	}

	function userBlystFunction($userid , $status) {
		//defining Variables
		global $wpdb;
		$myPins = $wpdb->get_results("SELECT * FROM `im_category_pins`CROSS JOIN `im_pins` ON im_pins.category = im_category_pins.id WHERE im_pins.pin_author = $userid AND im_pins.visibility = $status ");
		return $myPins;
	}

	function followingCount($userID , $status) {
		global $wpdb;
		return $wpdb->get_var("SELECT count(`id`) FROM `im_follow_list` WHERE `$status` = $userID");
	}

	function UserFollowStatus($userID) {
		global $wpdb;
		$user = wp_get_current_user();

		if($userID == $user->ID) {
			return 2;
		} else {
			$getUserStatus = $wpdb->get_var("SELECT count(`id`) FROM `im_follow_list` WHERE `following_user_id` = $userID AND `user_id` = $user->ID");
			if($getUserStatus == 0) {
				return "Follow";
			} else {
				return "Following";
			}
		}
	}

	function followUser($userID) {
		global $wpdb;
		$user = wp_get_current_user();
		$countt = $wpdb->get_var("SELECT count(`id`) FROM `im_follow_list` WHERE `following_user_id` = $userID AND `user_id` = $user->ID");
		if($countt == 0) {
			$wpdb->insert( 'im_follow_list', array(
				'user_id' => $user->ID,
				'following_user_id' => $userID)
			);
			return get_user_meta($userID , "first_name" , true);
		} else {
			return "already";
		}
		
	}

	function followList($userID , $status) {
		global $wpdb;
		$users = new users();
		if($status == "following_user_id") {
			$myVal = "user_id";
		} else {
			$myVal = "following_user_id";
		}
		$getMyList = $wpdb->get_results("SELECT * FROM `im_follow_list` WHERE `$status` = $userID");
		foreach ($getMyList as $key => $value) {
			$author_obj = get_user_by('id', $value->$myVal);
			?>
			<div class="follower">
				<div class="follower-wrapper">
					<a href="<?php echo esc_url( get_permalink(23) ); ?>/?username=<?php echo $author_obj->user_login; ?>">
						<figure>
							<figcaption style="background-image: url('<?php echo $users->viewUserDetails($value->$myVal , "Image"); ?>');"></figcaption>
							<fieldset>
								<legend><?php echo $users->viewUserDetails($value->$myVal , "Name"); ?></legend>
							</fieldset>
						</figure>
					</a>
				</div>
			</div>
			<?php
		}
	}

}

Class pagesClass {
	function getBasicFields($id , $slug , $identifier) {
		global $wpdb; 
		if($identifier == "page") {
			return $dataOut = get_field( $slug ,$id);
		} elseif($identifier == "user") {
			return $dataOut = get_user_meta($id , $slug , true);
		}
	}

	function getImageSrc($imgID) {
		$thumb = wp_get_attachment_image_src($imgID, 'full' );
		return $url = $thumb['0'];
	}

}




/****************************************Register Form*********************************************/




