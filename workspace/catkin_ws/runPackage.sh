#!/bin/bash

VAR="Y"
read -p "Do you want to build the package? (Y/n) :" VARIABLE
if [ "$VARIABLE" = "$VAR" ]; then
   catkin_make && sleep 10 && source devel/setup.bash
else
   source devel/setup.bash
fi

echo "Launching the main package ..."
roslaunch robot_localization_demo main.launch
