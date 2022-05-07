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

## install eclipse

see https://github.com/Systems-Modeling/SySML-v2-Pilot-Implementation.git 

Download the Oomph installer into ~/eclipse/eclipse-installer

Follow the instructions on https://github.com/Systems-Modeling/SysML-v2-Pilot-Implementation

Note: we have product version 2022-03

