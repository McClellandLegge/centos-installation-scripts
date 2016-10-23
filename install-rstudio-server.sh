#!/bin/sh

sudo wget https://download2.rstudio.org/rstudio-server-rhel-0.99.903-x86_64.rpm
sudo yum install -y --nogpgcheck rstudio-server-rhel-0.99.903-x86_64.rpm

sudo rm -f rstudio-server-rhel-0.99.903-x86_64.rpm*

