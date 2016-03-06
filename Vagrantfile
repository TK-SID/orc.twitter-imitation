# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  config.vm.define :web do |node|
    node.vm.box = "centos6.5"
    node.vm.box_url = "https://atlas.hashicorp.com/MantasK/boxes/centos-6.5-x86_64-puppet"
    node.vm.hostname = "web"
    node.vm.network :private_network, ip: "192.168.43.51"
    node.vm.network :forwarded_port, guest: 80, host: 8080
    # TODO :絶対パスをどうにかする
    node.vm.synced_folder "/Users/kurokishuntarou/repositories/twitter-imitation","/var/www/twitter-imitation/",create: true, owner: "vagrant", group: "vagrant"
    node.vm.provider :virtualbox do |vb|
      vb.memory = 1028
    end

    node.vm.provision :ansible_local do |ansible|
      ansible.playbook = "provision/playbook_web.yml"
      ansible.verbose = 'vvv'
    end
  end

  config.vm.define :db do |node|
    node.vm.box = "centos6.5"
    node.vm.box_url = "https://atlas.hashicorp.com/MantasK/boxes/centos-6.5-x86_64-puppet"
    node.vm.hostname = "db"
    node.vm.network :private_network, ip: "192.168.43.52"
    node.vm.network :forwarded_port, guest: 22, host: 8022
    node.vm.provider :virtualbox do |vb|
      vb.memory = 1028
    end

    node.vm.provision :ansible_local do |ansible|
      ansible.playbook = "provision/playbook_db.yml"
      ansible.verbose = 'vvv'
    end
  end
end
