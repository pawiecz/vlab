# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "debian/jessie64"
  config.vm.provision "shell", inline: <<-SHELL
    echo 'deb http://deb.debian.org/debian/ jessie-backports main' > /etc/apt/sources.list.d/backports.list
    export DEBIAN_FRONTEND=noninteractive
    apt-get --quiet update
    apt-get --quiet --assume-yes install postgresql
    apt-get --quiet --assume-yes install --target-release jessie-backports lava
  SHELL
end
