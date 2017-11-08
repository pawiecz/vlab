# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "debian/stretch64"
  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.provision :ansible do |ansible|
    #ansible.verbose = "vv"
    ansible.playbook = "guest.yml"
  end
end
