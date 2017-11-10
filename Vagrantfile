# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "debian/stretch64"
  config.vm.network "forwarded_port", guest: 80, host: 8080

  config.vm.provider :libvirt do |libvirt|
    libvirt.cpus = 2
    libvirt.memory = 2048
    libvirt.nested = true
  end

  config.vm.provision :ansible do |ansible|
    #ansible.verbose = "vv"
    ansible.playbook = "guest.yml"
  end
end
