# Sysml-workshop
Workshop items for sysml v2

# First steps

* install virtual box
* use predefined vm or go to [#manualinstallation]
* start eclipse (./go_eclipse)

* find 'org.omg.sysml'; right click; Run As ; Eclipse Application

# manual installation
## create VM 
(or use your own platform of choice)
* 40Gb disk and 4Gb mem
* installe UbuntU

## install software
you may just copy paste the lines below into the commandline

sudo apt update -y
sudo apt upgrade

### install git
sudo apt install -y git


### install jave (for eclipse)
sudo apt install -y default-jre

### install graphviz (for planUML)
sudo apt install -y graphviz

## clone relevant repos
cd ~

git clone https://github.com/woutergeurts/sysml-workshop.git

git clone https://github.com/Systems-Modeling/SySML-v2-Pilot-Implementation.git

git clone https://github.com/Systems-Modeling/SySML-v2-Release.git

## install eclipse

see https://github.com/Systems-Modeling/SysML-v2-Pilot-Implementation/blob/master/README.adoc

Download the Oomph installer into ~/eclipse/eclipse-installer

Follow the instructions on https://github.com/Systems-Modeling/SysML-v2-Pilot-Implementation

Note: we have product version 2022-03


## install jupyter
```
wget -c https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
chmod +x Miniconda3-latest-Linux-x86_64.sh
./Miniconda3-latest-Linux-x86_64.sh
```

answer the question asked by the script
./Miniconda3-latest-Linux-x86_64.sh
Restart bash

``` 
cd ~/SysML-v2-Release/install/jupyter 

./install.sh
``` 
