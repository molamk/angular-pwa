# Progressive Web App with Angular
## Self contained environment set-up
```bash
vagrant init ubuntu/xenial64
vagrant up
vagrant ssh
```

## Initalize dev environment (optional)\*
```bash
sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get dist-upgrade -y
git clone https://github.com/molamk/dotfiles.git
cd dotfiles && ./setup.sh
```

## Install node, yarn, nvm & angular
```bash
# NodeJs
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt-get install nodejs -y
# Yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get install yarn
# Enable npm install -g without sudo
https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
echo 'export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"' >> ~/.zshrc
source ~/.zshrc
reset
nvm install node
```

## Create new angular app
```bash
# Angular
yarn global add @angular/cli
ng new pwa-app --style=scss --routing
cd pwa-app
```

---
\* Default password is: `vagrant`

