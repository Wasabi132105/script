# inspected by:Yuchen Xue s4108248
# inspect date:23/10/2024
# total number of errors:2
# type for errors:
# 1.Syntax Error. add user and password should use useradd or adduser
# 2.Logic error: Employees are not assigned to groups.

#!/bin/bash
read -p "Enter Username: " user
read -p "Enter Password: " pwrd
read -p "Enter the group student/teacher:" group

#useradd
sudo useradd -m $user -s /bin/bash
#add group and show message
sudo usermod -aG $group $user
echo "$user create and add to the $group."
