# encoding: utf-8
# This file originally created at http://rove.io/6290cc1ca21e79761d4f9b1ce45c8ff4

# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "robiupui/cit43600_2016"

  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "2048"]
  end

  config.ssh.insert_key = true
  
  config.vm.network :forwarded_port, host: 4567, guest: 3000
end
