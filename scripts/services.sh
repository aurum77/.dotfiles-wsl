echo "Setting up docker"
sudo systemctl enable --now docker.service
sudo systemctl disable --now docker.socket
sudo usermod -aG docker $USER
