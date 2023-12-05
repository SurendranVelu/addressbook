#! /bin/bash

#sudo yum install java-1.8.0-openjdk-devel -y
sudo yum install git -y
sudo yum install docker
sudo systemctl start docker
#sudo yum install maven -y

if [ -d "addressbook" ]
then
  echo "repo is cloned and repo exists"
  cd /home/ec2-user/addressbook
  git pull origin master
else
    git clone https://github.com/SurendranVelu/addressbook.git
    cd /home/ec2-user/addressbook
    git checkout master
fi
#cd /home/ec2-user/addressbook
#mvn package
sudo docker build -t imagename /home/ec2-user/addressbook 
