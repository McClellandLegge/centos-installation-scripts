#!/bin/sh

function installr {
  ids=( $@ )
  id="${ids[@]}";
  pr=$( echo "c('${id// /','}')")
  sudo su - -c "R -q -e \"install.packages(${pr}, repos='http://cran.rstudio.com/')\""
}

sudo yum install -y libcurl-devel
sudo yum install -y openssl-devel
sudo yum install -y libssh2-devel

installr devtools
