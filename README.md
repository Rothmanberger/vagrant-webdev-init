# vagrant-wbedev-init

Vagrant file for a web development environment. Requires Vagrant to be installed on the host machine.
* Creates Ubuntu 18.04 LTS server and updates
* Forwards port 80 on guest machine to 8080 on the local machine
* Installs Nginx and configures default root to ```/data/www```
* Syncs ```/data/www``` folder so that files can be edited on the local machine

### Install
1. Pull the repository to host machine
2. Navigate to the directory in the terminal
3. In your browser, go to [localhost:8080](http://localhost:8080) for a fat _yeet_

### Syncing Atom
1. Install the "remote-sync" package: https://atom.io/packages/remote-sync
2. Ensure Vagrant is running (e.g. vagrant up)
3. Create empty directory on local machine (this directory will sync to /data/www on the VM)
4. Open that empty directory in Atom
5. Right click on it, select "Remote Sync -> Configure"
6. Fill in the SSH configuration details
    1. Hostname: 127.0.0.1
    2. Port: 2222
    3. Target directory: /data/www
     4. Ignore Paths: .remote-sync.json, .git/**
     5. username: vagrant
     6. select 'privatekey'
     7. Provide the absolute filepath for vagrant-webdev-init/.vagrant/machines/default/virtualbox/private_key (e.g. C:/Users/Fisty/Documents/vagrant-webdev-init/.vagrant/machines/default/virtualbox/private_key)
     8. Check the box for uploadOnSave
7. In Atom, right click on the empty folder again, select "Remote Sync -> 
Download Folder". Wait while it syncs your remote folder down to the 
host.
8. To test, edit the index.html file and check [localhost:8080](http://localhost:8080) for changes.
