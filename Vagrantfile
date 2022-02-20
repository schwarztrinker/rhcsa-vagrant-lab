Vagrant.configure("2") do |config|
  
    config.vm.define "workstation" do |workstation|
        workstation.vm.box = "kbsmanikanta/centos8-gui"
        workstation.vm.box_version = "1.0"
        workstation.vm.hostname = "workstation"
        workstation.vm.network :private_network, ip: "10.0.0.10"

        # host config servera 
        workstation.vm.provision "shell", inline: "echo '10.0.0.11 servera' >> /etc/hosts"

        # load workstation with gui
        # disable 3d acceleration cause of screen flickering
        config.vm.provider "virtualbox" do |vb|
            vb.gui = true
            vb.customize ["modifyvm", :id, "--accelerate3d", "off"]
          end
    end
  
    config.vm.define "servera" do |servera|
        servera.vm.box ="centos/8"
        servera.vm.provider :virtualbox
        servera.vm.hostname = "servera"
        servera.vm.network :private_network, ip: "10.0.0.11"
        
        ### disk provisioning in vagrant is in an experimental state - not working yet 
        (0..1).each do |i|
            servera.vm.disk :disk, size: "1GB", name: "disk-#{i}"
        end

        
       # host config serverb
        servera.vm.provision "shell", inline: "echo '10.0.0.10 workstation' >> /etc/hosts"
    
    end

    # global scripts
    config.vm.provision "shell", path: "setup.sh"
    
end