Vagrant.configure("2") do |config|
  
  config.vm.box = "ubuntu/bionic64"

  config.vm.provision "shell", path:"provision.sh"
  config.vm.provision "shell", run: "always", inline: "service nginx restart"

  config.vm.synced_folder "shared/data-www/", "/data/www"

  config.vm.network "forwarded_port", guest: 80, host: 8080, id: "nginx"
  
end
