# Step 1 Provide your github details (only if you are an enrolled student in the class).

https://goo.gl/forms/YAgKjz8V6RmQcO2f2

# Step 2 Read the [syllabus](syllabus.md)

# Step 3 - Set up the development environment 

In the class we use a virtual environment to set up a linux machine that we use for programming assignments and examples. The virtual environment is created using virtual box.  You can read more about virtual box here: https://www.virtualbox.org/manual/ch01.html.

## VirtualBox

- Download and install the latest from Oracle VirtualBox from https://www.virtualbox.org/
- Install the virtual box extension package

### Vagrant

- Download and install Vagrant from https://www.vagrantup.com/
- Download and install the Vagrant plugin for VirtualBox Guest Additions. To do so simply call 

    vagrant plugin install vagrant-vbguest
	
### Download the repo and launch!

Clone the getting started git repository. 

    git clone https://github.com/CS3281-2016/getting-started.git
    
    
if you do not have git on the host machine you can download the repository as a zip from here
  
  https://github.com/CS3281-2016/getting-started/archive/master.zip

Open a shell in the directory containing the `Vagrantfile` and run

    vagrant up

This will take a while when you run it for the first time.
Vagrant will download the base box, launch the virtual machine and install all the software required for the class.

**Note** Change the following entries in the Vagrantfile based on your situtation. These settings set up the memory and CPU properties of the new virtual machine. Try to setup atleast 2048 MB i.e. 2 GB for memory. More is better. If you have at least 4 cores then you can setup atleast 2 CPU. Please increase the number if you have more cores available.

```
  config.vm.provider "virtualbox" do |vb|
  	# DIsplay the name of the virtualbox 
  	vb.name = "cs281spring2017devbox"
    vb.gui = true
    vb.customize ["modifyvm", :id, "--memory", "2048"]
    vb.customize ["modifyvm", :id, "--cpus", "2"]   
    vb.customize ["modifyvm", :id, "--accelerate3d", "off"]
	vb.customize ['modifyvm', :id, '--clipboard', 'bidirectional']
  end
  ```

**Note** - Please check that there were no errors during this step. Any errors might lead to the case where you will not find clion in the vm. If such an error happens, you try running ``vagrant reload``

### Login and finish installation

When the software installation is complete, log into the VM (user and password are "vagrant").

#### CLion

Inside the VM, open a terminal and run 

    /home/vagrant/clion-2016.3.2/bin/clion.sh
	
It wil start the actual installation wizard for CLion. 

If you want to set up desktop shortcut for clion - please see the instructions available here

https://www.jetbrains.com/help/clion/2016.3/installation-and-launching.html#desktop_shortcut

#### Clion License

Get the student license from https://www.jetbrains.com/student/. 

Follow the getting started instructions from https://www.jetbrains.com/help/clion/2016.1/quick-start-guide.html

# Step 3 - Set up SSH access to github. 

 Follow the instructions provided here
	
	https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/

# Step 4 - Review the following materials

   - See this quick tour video at https://www.jetbrains.com/clion/documentation/
   - Read https://www.jetbrains.com/help/clion/2016.2/quick-start-guide.html. 
   - Watch the video https://www.youtube.com/watch?v=wUZyoAnPdCY for understanding how to debug with clion
   
**Note** - As you read the quick start guide, you will realize that clion uses cmake (https://cmake.org/cmake-tutorial/) for describing the compilation and linking procedures. We will review the Cmake principles in the class.

However, in this class, we will provide you the cmake files. You will only need to edit them using the Clion GUI as shown in the quick start guide.

# Step 5 - Set up the class examples repository in clion.

- Follow the instructions shown in this video [https://youtu.be/V76maDEsl-8](https://youtu.be/V76maDEsl-8)
- The examples repostiory is available here: [https://github.com/CS3281-2016/examples](https://github.com/CS3281-2016/examples).
- The lecture notes are located at https://github.com/CS3281-2016/lectures
