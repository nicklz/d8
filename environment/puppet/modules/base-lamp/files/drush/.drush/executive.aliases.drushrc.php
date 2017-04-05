<?php

if (!isset($drush_major_version)) {
  $drush_version_components = explode('.', DRUSH_VERSION);
  $drush_major_version = $drush_version_components[0];
}


$aliases['local'] = array(
  'site' => 'd8',
  'root' => '/home/vagrant/www/docroot',
  '%files' => 'sites/local.d8.com/files',
  'uri' => 'local.d8.com',
);
