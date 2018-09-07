# vagrant-wbedev-init

Vagrant file for a web development environment. Requires Vagrant to be installed on the host machine.
* Creates Ubuntu 18.04 LTS server and updates
* Forwards port 80 on guest machine to 8080 on the local machine
* Installs Nginx and configures default root to ```/data/www```
* Syncs ```/data/www``` folder so that files can be edited on the host machine

### Install
1. Pull the repository to host machine
2. Navigate to the directory in the terminal
3. In your browser, go to [localhost:8080](http://localhost:8080) for a fat _yeet_
