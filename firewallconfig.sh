#!/bin/bash

# block outgoing traffic
sudo ufw default deny outgoing

# block incoming traffic
sudo ufw default deny incoming

#allow web browsers
sudo ufw allow out 80
sudo ufw allow out 443
sudo ufw allow out 53
