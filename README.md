# Steps to get the Development Environment up and running.


## VirtualBox

Download and install Oracle VirtualBox from https://www.virtualbox.org/

### Vagrant

Download and install Vagrant from https://www.vagrantup.com/

You may also want to install the Vagrant plugin for VirtualBox Guest Additions. 
The base box used comes with the Guest Additions for 5.0.18, and the plugin will take care 
to install the correct Guest Additions if your version of VirtualBox differs from that.
To do so simply call 

    vagrant plugin install vagrant-vbguest
	
### Download the repo and launch!

Clone the course-info git repository. Change the directory to the folder vagrant_vm

    git clone https://github.com/CS3281-2016/getting-started.git
    cd vagrant_vm 
    
if you do not have git on the host machine you can download the repository as a zip from here
  
  https://github.com/CS3281-2016/getting-started/archive/master.zip

Open a shell in the directory containing the `Vagrantfile` and run

    vagrant up

This will take a while when you run it for the first time.
Vagrant will download the base box, launch the virtual machine and install the software mentioned above.

### Login and finish installation

When the software installation is complete, log into the VM (user and password are "vagrant").

#### CLion

Inside the VM, open a terminal and run 

    /opt/clion-2016.2.1/bin/clion.sh
	
It wil start the actual installation wizard for CLion. 

If you want to set up desktop shortcut for clion - please see the instructions available here

https://www.jetbrains.com/help/clion/2016.1/installation-and-launching.html#desktop_shortcut

#### Clion License

Get the student license from https://www.jetbrains.com/student/. 

Follow the getting started instructions from https://www.jetbrains.com/help/clion/2016.1/quick-start-guide.html



# Alternate Instructions (Only if the above steps did not work for you)

If the vagrant approach does not work for you, create a new xubuntu vm manually on your machine. 

  Follow the instructions in this video
   https://www.youtube.com/watch?v=9_DpFhT_euI

Then you will have to install the following packages. 

    sudo apt-get install cmake libboost-all-dev vim git -y

Get clion manually using the following commands

	sudo wget -q http://download.jetbrains.com/cpp/CLion-${CLION_VERSION}.tar.gz
	sudo tar xfz CLion-${CLION_VERSION}.tar.gz -C /opt
	
Inside the VM, open a terminal and run 

    /opt/clion-2016.2.1/bin/clion.sh
	
It wil start the actual installation wizard for CLion. 

If you want to set up desktop shortcut for clion - please see the instructions available here

https://www.jetbrains.com/help/clion/2016.1/installation-and-launching.html#desktop_shortcut

#### Clion License

Get the student license from https://www.jetbrains.com/student/. 

Follow the getting started instructions from https://www.jetbrains.com/help/clion/2016.1/quick-start-guide.html

