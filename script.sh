curl -O http://apt.puppetlabs.com/pool/precise/main/f/facter/facter_1.6.18-1puppetlabs1_all.deb
curl -O curl -O https://gist.github.com/carlossg/8578202/raw/70689b1b74517cc4b0743e54d84dae8375503159/videbcontrol.sh
bash videbcontrol.sh facter_1.6.18-1puppetlabs1_all.deb
# remove dependency to dmidecode in the editor that opens
sudo dpkg -i facter_1.6.18-1puppetlabs1_all.modified.deb
# If you want to use ruby 1.9 instead of 1.8
sudo apt-get install libaugeas-ruby1.9.1 ruby1.9.1
 
# puppet may not install if all the dependencies are not listed
sudo apt-get install puppet puppet-common
# mark dependencies as automatically installed so they are removed when removing puppet
sudo apt-mark auto facter libaugeas-ruby1.9.1 puppet-common

