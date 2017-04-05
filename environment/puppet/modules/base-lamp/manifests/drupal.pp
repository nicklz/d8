class base-lamp::drupal {

    file{'local.d8.com':
            path => '/home/vagrant/www/local.d8.com',
            ensure => present,
            recurse => true,
            source => "puppet:///modules/base-lamp/drupal/local.d8.com",
            owner => vagrant,
            group => vagrant;
    }

}