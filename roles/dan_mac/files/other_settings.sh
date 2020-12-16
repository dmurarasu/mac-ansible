#/bin/bash

### using aws-azure-login with docker
sudo curl -o /usr/local/bin/aws-azure-login https://raw.githubusercontent.com/dtjohnson/aws-azure-login/master/docker-launch.sh
sudo chmod o+x /usr/local/bin/aws-azure-login
sudo chmod go+x /usr/local/bin/aws-azure-login

### configuring git user and email and to use token from keychain(add token to keychain)
git config --global user.name "Dan Murarasu"
git config --global user.email "dan.murarasu@gmail.com"
git config --global credential.helper=osxkeychain

### cleaner history and better diff
git config --global pull.rebase true
git config --global fetch.prune true
git config --global diff.colorMoved zebra

### git secrets
#Add a configuration template if you want to add hooks to all repositories you initialize or clone in the future.
git secrets --register-aws --global
#Add hooks to all your local repositories
git secrets --install ~/.git-templates/git-secrets
git config --global init.templateDir ~/.git-templates/git-secrets


### terraform completion
terraform -install-autocomplete
