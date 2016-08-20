#!/usr/bin/env bash
CLION_VERSION=2016.2.1

hello_func() {
	echo "Hello World"
	sudo apt-get update
}

clion_func(){
	sudo wget -q http://download.jetbrains.com/cpp/CLion-${CLION_VERSION}.tar.gz
	sudo tar xfz CLion-${CLION_VERSION}.tar.gz -C /opt


}


#Finally shutdown the system
shutdown_func(){
	echo "System Shutting Down"
	sudo shutdown now -h
}


git_func(){

sudo apt-get install git -y

}

cmake_func(){

	sudo apt-get install cmake -y
}

g++_func(){

	sudo apt-get install g++ -y

}
boost_func(){

	sudo apt-get install libboost-all-dev -y
}
vim_func(){

	sudo apt-get install vim -y
}
#
vim_func
hello_func
g++_func
git_func
cmake_func
boost_func
clion_func
