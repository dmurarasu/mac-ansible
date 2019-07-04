#/bin/bash

### using aws-azure-login with docker
sudo curl -o /usr/local/bin/aws-azure-login https://raw.githubusercontent.com/dtjohnson/aws-azure-login/master/docker-launch.sh
sudo chmod o+x /usr/local/bin/aws-azure-login
sudo chmod go+x /usr/local/bin/aws-azure-login

### configuring git user and email and to use token from keychain(add token to keychain)
git config --global user.name "Dan Murarasu"
git config --global user.email "dan.murarasu@gmail.com"
git config --global credential.helper=osxkeychain
