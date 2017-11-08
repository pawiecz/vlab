# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "debian/stretch64"
  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.provision "shell", inline: <<-SHELL
    export DEBIAN_FRONTEND=noninteractive
    apt-get --quiet update
    apt-get --quiet --assume-yes install postgresql
    apt-get --quiet --assume-yes install lava
    a2dissite 000-default.conf
    a2enmod proxy
    a2enmod proxy_http
    a2ensite lava-server.conf
    service apache2 restart
    echo "from django.contrib.auth.models import User; User.objects.create_superuser('vagrant', 'vagrant@localhost', 'vagrant')" | lava-server manage shell
  SHELL
end
