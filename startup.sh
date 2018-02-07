udo add-apt-repository ppa:webupd8team/java!/bin/bash
set +x
sudo apt update
sudo apt install -y lsb-core
function getCodename {
	sudo lsb_release -a | grep Codename | awk '{print $2}'
}
codename=getCodename
echo $codename
sudo apt install -y vim
sudo add-apt-repository -y ppa:webupd8team/java; sudo apt update
sudo apt install -y oracle-java8-installer
sudo apt install -y oracle-java8-set-default
#vbox install
sudo deb https://download.virtualbox.org/virtualbox/debian $codename contrib
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
sudo apt-get update
sudo apt-get install -y virtualbox-5.2
#vagrant install
wget https://releases.hashicorp.com/vagrant/2.0.2/vagrant_2.0.2_x86_64.deb
sudo dpkg -i vagrant_2.0.2_x86_64.deb
rm vagrant_2.0.2_x86_64.deb
#install docker
sudo apt install docker.io
sudo apt update

