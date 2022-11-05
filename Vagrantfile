# Defines
machines = {
  "master" => {"cpu" => "1", "memory" => "512", "image" => "generic/alpine39"},
  "node01" => {"cpu" => "1", "memory" => "512", "image" => "generic/alpine39"},
  "node02" => {"cpu" => "1", "memory" => "512", "image" => "generic/alpine39"},
  "node03" => {"cpu" => "1", "memory" => "512", "image" => "generic/alpine39"}
}
ip = {
  "range" => "192.168.0.",  # Network range.
  "node"  => 100            # Initial IP (leader). 
}
local_network = ""          # Bridged network interface (name).
sync_folder = "/vagrant"

# Create machines.
Vagrant.configure("2") do |config|
  ip["leader"] = ip["range"] + "#{ip["node"]}"      # Swarm leader IP.

  machines.each do |name, conf|
    config.vm.define "#{name}" do |machine|
      ip["worker"] = ip["range"] + "#{ip["node"]}"  # Swarm atual node IP.

      machine.vm.box = "#{conf["image"]}"
      machine.vm.hostname = "#{name}"
      machine.vm.network "public_network", ip: ip["worker"], bridge: "#{local_network}"
      machine.vm.synced_folder ".", "#{sync_folder}", owner: "vagrant", group: "vagrant", disabled: false

      machine.vm.provider "virtualbox" do |vb|
        vb.name = "#{name}"
        vb.cpus = conf["cpu"]
        vb.memory = conf["memory"]
      end
      machine.vm.provision "shell", path: "docker-install.sh"
      machine.vm.provision "shell", path: "docker-swarm-config.sh", args: [ip["worker"], ip["leader"], "#{sync_folder}"]

      ip["node"] += 1
     end
  end
end