sudo dpkg -i puppetlabs-release-wheezy.deb
sudo apt-get update -y
# remove dependency to dmidecode in the editor that opens
sudo dpkg -i facter_1.6.18-1puppetlabs1_all.modified.deb
# If you want to use ruby 1.9 instead of 1.8
sudo apt-get install libaugeas-ruby1.9.1 ruby1.9 -y
sudo apt-get -f install -y
# puppet may not install if all the dependencies are not listed
sudo apt-get install puppet puppet-common -y
# mark dependencies as automatically installed so they are removed when removing puppet
sudo apt-mark auto facter libaugeas-ruby1.9.1 puppet-common
mv -f files/puppet.conf /etc/puppet/puppet.conf
mv -f files/puppet /etc/default/puppet
