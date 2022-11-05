# -*- mode: ruby -*-
# vi: set ft=ruby  :

# Defines.
provider = "virtualbox"
machines = {
  "master" => {"cpu" => "1", "memory" => "512", "image" => "generic/alpine39"}, # Leader is the first node. 
  "node01" => {"cpu" => "1", "memory" => "512", "image" => "generic/alpine39"}, # Worker node.
  "node02" => {"cpu" => "1", "memory" => "512", "image" => "generic/alpine39"}  # Worker node.
# "node03" => {"cpu" => "1", "memory" => "512", "image" => "generic/alpine39"}  # Worker node.
}
ip = {
  "range" => "192.168.0.",  # Network range.
  "atual" => 100            # Initial IP (leader IP). 
}
local_network = ""          # Bridged network interface (name).
sync_folder = "/vagrant"

# Create machines (The magic is here!).
Vagrant.configure("2") do |config|
  ip["leader"] = ip["range"] + "#{ip["atual"]}"   # Cluster leader IP.

  machines.each do |name, conf|
    config.vm.define "#{name}" do |machine|
      ip["node"] = ip["range"] + "#{ip["atual"]}" # Atual node IP (leader and workers).

      machine.vm.box = "#{conf["image"]}"
      machine.vm.hostname = "#{name}"
      machine.vm.network "public_network", ip: ip["node"], bridge: "#{local_network}"
      machine.vm.synced_folder ".", "#{sync_folder}", owner: "vagrant", group: "vagrant", disabled: false

      machine.vm.provider "#{provider}" do |vb|
        vb.name = "#{name}"
        vb.cpus = conf["cpu"]
        vb.memory = conf["memory"]
      end
      machine.vm.provision "shell", path: "docker-install.sh"
      machine.vm.provision "shell", path: "docker-swarm-config.sh", args: [ip["node"], ip["leader"], "#{sync_folder}"]

      ip["atual"] += 1
     end
  end
end