#!/bin/sh

function installr {
  ids=( $@ )
  id="${ids[@]}";
  pr=$( echo "c('${id// /','}')")
  sudo su - -c "R -q -e \"install.packages(${pr}, repos='http://cran.rstudio.com/')\""
}

installr shiny data.table magrittr dplyr dtplyr reshape2 DT ggplot2 plotly
