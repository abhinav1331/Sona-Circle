<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'sona');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '1_6Er|)IWS5z6Iv 4B?ux+LRCda*zMj]0(=mF&T<?,BnpBvu+q{f&BSl(48w$$(Q');
define('SECURE_AUTH_KEY',  'X@q0VDG`qzE/*AnH|;, !<z02G.w]^@fs{Fs?lR0Nr8Hv0{p@1Rv=mZqVy2yw=x9');
define('LOGGED_IN_KEY',    '{7?,;4a3I`VZv}^Y`d6WYCaU<+63&U%xv KY$4lV4)8)$b90lr:8=,3I2V37/d&r');
define('NONCE_KEY',        '7B&]BJZb`F5$j.(J%$Z=TS`7Fjejt(HBdtwD{&</=@8cIvFYhFU_(#yk;:xA3OQG');
define('AUTH_SALT',        '*c;?pJJsvA`NN9h}i>9-T&bE5*f6lvi@Hs#C@UEggSxVva>5mL>!cc?~J8R!A948');
define('SECURE_AUTH_SALT', '5bZ[&tKf~#v{-r)dc<ErBHm:=}90m$#IQJbCdyuT`A[Pd2?$bD?BxQaOz8FgqIG{');
define('LOGGED_IN_SALT',   'g<LD;f9<du(F*V$z;Kze(c`Jr8K}/M{jvcXqO7QX[G:R1Wq+XR4O`bezg*2ciIXV');
define('NONCE_SALT',       'Q $szL8Qp`s;4_@*9Hz2pjv-B1MNalg%?.87ug@^E(W+x>}mCT<8XyO%F^V%L5<,');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'im_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
