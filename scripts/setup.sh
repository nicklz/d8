#!/usr/bin/env bash

   
        
        
sudo locale-gen  en_US.UTF-8
export LC_ALL="en_US.UTF-8"
export LANG="en_US.UTF-8"

#so we dont have to type yes

ssh-keyscan -H github.com >> ~/.ssh/known_hosts

ssh-keyscan -H keys.gnupg.net >> ~/.ssh/known_hosts

ssh-keyscan -H raw.githubusercontent.com >> ~/.ssh/known_hosts


ssh-keyscan -H bitbucket.org  >> ~/.ssh/known_hosts

ssh-keyscan -H codeserver.dev.1baed054-bc5c-4781-9d8f-0fd08162f2f4.drush.in  >> ~/.ssh/known_hosts

ssh-keyscan -H drush.in  >> ~/.ssh/known_hosts

ssh-keyscan -H git.d8.com  >> ~/.ssh/known_hosts
ssh-keyscan -H d8.com  >> ~/.ssh/known_hosts



    



echo "drop database d8;" | mysql -uroot
echo "create database d8;" | mysql -uroot
#mysql -u root -p d8 --password="" < /home/vagrant/www/dump.sql


curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer


#composer global config minimum-stability dev
composer require drush/drush
composer global require drupal/coder
export PATH="$PATH:$HOME/vendor/bin"
export PATH="$PATH:$HOME/.config/composer/vendor/bin"




echo 'export PATH="$PATH:$HOME/vendor/bin:$HOME/.config/composer/vendor/bin:$HOME/.rvm/scripts"' >> ~/.bashrc

cd ~ && chmod 777 .bashrc && . ./.bashrc
ln -s ~/.config/composer ~/.composer

sudo a2enmod headers
sudo service apache2 restart 


cd ~/www/ && composer create-project burdamagazinorg/thunder-project docroot --stability dev --no-interaction && cd d8 && composer require drupal/devel:1.*


#mv ~/www/local.d8.com  ~/www/docroot/sites/local.d8.com