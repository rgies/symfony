<?php 
/**
 * Redirector
 *
 * Redirects to directory web for non vhost environments
 */

header('location: ' . dirname($_SERVER['PHP_SELF']) . '/web');

