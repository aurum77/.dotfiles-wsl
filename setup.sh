sudo pacman -Syu fakeroot debugedit
sh ./scripts/update_install.sh
sh ./scripts/paru.sh
sh ./install_packages.sh
sh ./scripts/services.sh
sh ./scripts/npm_pkg.sh
sh ./scripts/tpm.sh
