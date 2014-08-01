#!/bin/sh
read -s -p "Password: " P
export PASSWORD=$P

export PROJECT=71109025
export TASK=023
export TYPE=LABOR

export BROWSER=chrome
export USERNAME=udonom1

cucumber
