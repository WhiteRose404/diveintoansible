#!/bin/bash

echo (){
	builtin echo $1 >> hosts
}
loop(){
	for i in 1 2 3
	do
        	echo "$1${i} $2"
	done
}

# empty the file
echo "" > hosts

# add the centos containers
echo "[centos]"
loop "centos" "ansible_user=root"

# add the ubuntu containers
echo "[ubuntu]"
loop "ubuntu" "ansible_become=true ansible_become_pass=password"
