# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"

  config.vm.define "elixir" do |elixir|
    elixir.vm.hostname = "elixir"
    elixir.vm.network :private_network, ip: "172.16.16.16"
    elixir.ssh.forward_agent = true

    elixir.vm.provision :ansible do |ansible|
      ansible.verbose = "vvvv"
      ansible.playbook = "playbook.yml"
      ansible.limit = "all"
    end
  end
end
