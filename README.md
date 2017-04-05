#Vagrant for d8 Project Drupal

#Vagrant Setup

##Pre-requisites
* Vagrant https://www.vagrantup.com/downloads.html
* Virtual Box https://www.virtualbox.org/wiki/Downloads


##Steps
* git clone git@github.com:nicklz/d8.git
* cd d8
* cp ~/.ssh/id_rsa environment/puppet/modules/base-lamp/files/ssh/
* vagrant plugin install vagrant-hostsupdater
* vagrant up && vagrant reload && vagrant ssh
* source ./scripts/setup.sh
* Visit in your browser: http://local.d8.com
* Follow directions to set up distro (use root / no password for the db)