<a name="readme-top"></a>

<h1 align="center">
  <a href="#">Local Cluster using Vms and Containers</a>
</h1>

<h4 align="center"> 
	 Status: Finished
</h4>

<p align="center">
  <a href="#about">About</a> •
  <a href="#features">Features</a> •
  <a href="#prerequisites">Prerequisites</a> •
  <a href="#requirements">Requirements</a> •
  <a href="#getting-start">Getting Start</a> •
  <a href="#acknowledgments">Acknowledgments</a> •
  <a href="#author">Author</a> •
  <a href="#user-content-license">License</a>
</p>


## About

Create a local cluster with virtual machines and containers, you will need to use your knowledge of Vagrant and Docker Swarm. Avoid manual deployments by improving your skills as a developer.

<p align="right">(<a href="#readme-top">back to top</a>)</p>


## 💻 Features

1. Create a *Vagrantfile* with the definitions of 4 virtual machines. One being named *"master"* and the others named *"node01"*, *"node02"* and *"node03"*; 
2. Each virtual machine must have a *fixed IP*; 
3. All VMs must have *Docker pre-installed*; 
4. The machine named *"master"* shall be the manager/*leader* node of the cluster;
5. The other VMs should be included in the *Docker Swarm* cluster as *workers*;
6. Publish the *Vagrantfile* and scripts to a repository on *GitHub*.

<p align="right">(<a href="#readme-top">back to top</a>)</p>


## Prerequisites

For this project you will need to know:
- Basic knowledge in virtual machines;
- Basic knowledge in Vagrant;
- Basic knowledge in Docker (Cluster Swarm);
- Basic knowledge in Shell-Script (Bash);
- Basic knowledge of Git and GitHub.

<p align="right">(<a href="#readme-top">back to top</a>)</p>


## Requirements

For this project you will need:
- Docker and Virtual-Box;
- Terminal Linux access.

<p align="right">(<a href="#readme-top">back to top</a>)</p>


## Getting Start

To get a local copy and running the project, follow these simple steps.

### 🛠️ Installation Steps
1. Clone the repository
```Bash
git clone https://github.com/sidneyaquino/dio-carrefour-04-vagrant-docker-swarm-iac/tree/main
```
2. Go into the project directory


### :zap: Usage.
In the projet folder execute the command:
```bash
sudo vagrant up
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>


## Acknowledgments
The [Carrefour Bank - Cloud DevOps Experience bootcamp](https://web.dio.me/track/cloud-devops-experience-banco-carrefour) is a program came with an unprecedented 101-hour track for professionals who already work in the area and want to evolve or are starting to study about DevOps. With a complete training, the complete bootcamp about Linux, Docker, Kubernetes and Google Cloud Platform.

>*Date*: from 20/Oct until 04/Dec/2022 - *Level*: Intermediate - *Hours*: 101

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<a name="author"></a>
## :mailbox_with_mail: Author
Made by Sidney Aquino, [get in Touch!](https://de.linkedin.com/in/sidneydeaquino) <a href="https://de.linkedin.com/in/sidneydeaquino" title="Linkein"> :incoming_envelope: </a>

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<a name="user-content-license"></a>
## :memo: License
This project is under the MIT license. See the file [LICENSE](LICENSE.md) for more details.

---
