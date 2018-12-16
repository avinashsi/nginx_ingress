# -*- mode: ruby -*-
# vi: set ft=ruby :
### Aurthor A.K Singh 16.12.2018 #############
# you're doing.
Vagrant.configure("2") do |config|
	config.vm.define :mkube do |mkube|
		mkube.vm.hostname = "mkube.test.com"
		mkube.vm.box = "minikubepoc"
		mkube.vm.boot_timeout = 300

		mkube.vm.network :private_network, ip: "192.168.111.40"
		mkube.vm.network "forwarded_port", guest: 1024, host: 80,auto_correct: true
		mkube.vm.network "forwarded_port", guest: 1025, host: 81,auto_correct: true
		mkube.vm.network "forwarded_port", guest: 1026, host: 82,auto_correct: true
		mkube.vm.network 	"forwarded_port", guest: 30000,host: 30000,auto_correct: true

		mkube.vm.synced_folder "files", "/home/vagrant/files"
		mkube.vm.provision "shell" , path: "bootstrap.sh" , run: 'once'
		mkube.vm.provision "shell" , path: "application_provision.sh", run: 'once'


		mkube.vm.provider "virtualbox" do |prov|
			prov.customize ["modifyvm", :id, "--memory", "2048"]
			#prov.gui=true
			prov.name="mkube"
		end
	end
end
