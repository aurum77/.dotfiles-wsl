cd /tmp/
wget http://github.com/nullpo-head/WSL-Hello-sudo/releases/latest/download/release.tar.gz
tar xvf release.tar.gz
cd release
./install.sh
sudo sed -i '2i auth sufficient pam_wsl_hello.so' /etc/pam.d/sudo
