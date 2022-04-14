<?php
/**
 * Plugin Name:       Mail Interceptor with Mailhog
 * Description:       Intercept email with Mailhog. This plugins is part of WP & Docker Boilerplate
 * Version:           0.0.1
 * Author:            Jonathan Lafleur
 * Author URI:        https://jonathanlafleur.ca/
 * License:           GPL v2 or later
 * License URI:       https://www.gnu.org/licenses/gpl-2.0.html
 */
add_action( 'phpmailer_init', 'setup' );
function setup( PHPMailer $phpmailer ) {
    $phpmailer->Host = 'mailhog';
    $phpmailer->Port = 5025;
    $phpmailer->IsSMTP();
}
