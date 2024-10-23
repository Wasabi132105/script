#!/bin/bash
#start script

#serch update,the upgrade(it will choose y when system show need to do a choice when update)
sudo apt-get update && sudo apt-get upgrade -y >> /home/yuchenxue/Desktop/project2/Linux.log 2>&1
#log will put in /home/yuchenxue/Desktop/project2,see folder "log"