# Configuração da Box
Vagrant.configure("2") do |config|
    config.vm.box = "ubuntu/bionic64"
    config.vm.hostname = "projeto"
    
    # Configuração da Rede
    config.vm.network "forwarded_port", guest: 80, host: 8080
    config.vm.network "private_network", ip: "192.168.33.10"
    
    # Configuração de Recursos
    config.vm.provider "virtualbox" do |vb|
      vb.memory = "1024"
      vb.cpus = "1"
    end
    
    # Configuração da Pasta Compartilhada
    config.vm.synced_folder ".", "/vagrant", disabled: true
  end  