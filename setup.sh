## Initalize dev environment (optional)\*
sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get dist-upgrade -y
git clone https://github.com/molamk/dotfiles.git
cd dotfiles && ./setup.sh

## Install node yarn
# NodeJs
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt-get install nodejs -y
# Yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get install yarn
# Enable npm install -g without sudo


## Install angular
# yarn global add @angular/cli

