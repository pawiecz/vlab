# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "debian/jessie64"
  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.provision "shell", inline: <<-SHELL
    echo 'deb http://deb.debian.org/debian/ jessie-backports main' > /etc/apt/sources.list.d/backports.list
    export DEBIAN_FRONTEND=noninteractive
    apt-get --quiet update
    apt-get --quiet --assume-yes install postgresql
    apt-get --quiet --assume-yes install --target-release jessie-backports lava
    a2dissite 000-default.conf
    a2ensite lava-server.conf
    service apache2 reload
  SHELL
end
