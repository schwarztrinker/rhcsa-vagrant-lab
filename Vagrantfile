Vagrant.configure("2") do |config|
  
    config.vm.define "workstation" do |workstation|
        workstation.vm.box ="centos/8"
        workstation.vm.hostname = "workstation"
        workstation.vm.network :private_network, ip: "10.0.0.10"

        # host config servera 
        workstation.vm.provision "shell", inline: "echo '10.0.0.11 servera' >> /etc/hosts"
    end
  
    config.vm.define "servera" do |servera|
        servera.vm.box ="centos/8"
        servera.vm.provider :virtualbox
        servera.vm.hostname = "servera"
        servera.vm.network :private_network, ip: "10.0.0.11"
        
        # disks in vagrant experimental not working yet 
        (0..3).each do |i|
            servera.vm.disk :disk, size: "5GB", name: "disk-#{i}"
        end

       # host config serverb
        servera.vm.provision "shell", inline: "echo '10.0.0.10 workstation' >> /etc/hosts"
    end

    # global scripts
    config.vm.provision "shell", path: "setup.sh"
    
end