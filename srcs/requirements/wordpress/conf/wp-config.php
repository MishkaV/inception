<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'JbenjyDB' );

/** Database username */
define( 'DB_USER', 'jbenjy' );

/** Database password */
define( 'DB_PASSWORD', 'password' );

/** Database hostname */
define( 'DB_HOST', 'mariadb' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
 define('AUTH_KEY',         'Ak/euMe2|DcLQaU?cv1:mIGR2?&P)/HW9-#wTC?0-Q10{4y1(?/[f&vszy.Kuy*J');
 define('SECURE_AUTH_KEY',  '%K(-qK%N[Rw{)7w Ip|lG|l {oFR%k_ym6T_PCzQ!Z]cLrPS|JpRKW2Z%a>[Cc{Z');
 define('LOGGED_IN_KEY',    '/k-udt:P7W+|;XU`=)hOB*z!G[m%sH6E)Hz$@@c>=wqcKl$wPU9;,^`M)[O!:{2`');
 define('NONCE_KEY',        '3!U!MK*gH_TDS&U-3Uk/ +HsLSp_(NGR$,<;ZU$cc|Nh@z}^:+&SE}h,7@Bes[b/');
 define('AUTH_SALT',        'J{j/LmCFj=K?HFB!_ilbX:xFkN6>/rVu9Kv;H{+h72vv.cB2x(dOM+8|p9+b>g:}');
 define('SECURE_AUTH_SALT', '2}*KL+NT`>471FvM5QXle^o(L5&6=MDq>Muk,FHqWU:O=OFJx^yu2-i<l:+85oUR');
 define('LOGGED_IN_SALT',   'pA0wZ+V-N)66]0^>*F#Lm;jq3-}a6/4![Dmgc1F1{6U%9qxSgqUvL+<CvIRATYkf');
 define('NONCE_SALT',       'glO#c;NKoo%]i0t0tNLIGL0+c-mJh:eI#3|x6W_:]zFyB)/`Ts.RTRiGj*NhHx3G');

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
