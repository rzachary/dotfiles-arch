#!/bin/bash

# Install Beginning Times
sudo pacman -S base-devel

# Install Editors
sudo pacman -S neovim

# Install Compilers | Interpreters | Programming Tooling
## C/C++
sudo pacman -S clang

## Java | OpenJDK | Oracle Java
sudo pacman -S jre-openjdk jdk-openjdk openjdk-doc
sudo yay -S bytecode-viewer cfr krakatau-git 
sudo yay -S jre jdk
# Fix: To solve potential MS Fonts issue
sudo yay -S ttf-ms-fonts

## Python
sudo pacman -S python # I think virtualenv comes with this in pacman
sudo pacman -S python-pip
sudo pacman -S ipython jupyterlab jupyter-notebook

## Haskell
sudo pacman -S ghc cabal-install stack

## GoLang
sudo pacman -S go go-tools

## Clojure
sudo pacman -S clojure
sudo pacman -S leiningen

## Ruby and jekyll
sudo pacman -S ruby ruby-rdoc ruby-docs
sudo pacman -S rubygems # Bundler will be handled post install dueto some config stuff
echo "Remember to install Bundler"

# Build Tools | Packagers
## Maven
sudo pacman -S maven
## Gradle
sudo pacman -S gradle
## CMake
sudo pacman -S cmake
## Bazel
sudo pacman -S bazel
# Install nonstandard tools
## Install Servers
sudo pacman -S apache
sudo pacman -S onionshare
sudo pacman -S gunicorn

## AWS CLI
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install -i /usr/local/aws-cli -b /usr/local/bin

## Google Cloud CLI
curl -O https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-328.0.0-linux-x86_64.tar.gz
mv google-cloud-sdk-328.0.0-linux-x86_64.tar.gz ~/tools/
tar -xvf ~/tools/google-cloud-sdk-328.0.0-linux-x86_64.tar.gz
./tools/google-cloud-sdk/install.sh

## MSFT Azure CLI

## Install Docker
sudo pacman -S docker


## Install Kubernetes and helpers
sudo yay etcd
sudo pacman -S kubernetes-control-plane kubernetes-node kubeadm kubectl kubelet 
