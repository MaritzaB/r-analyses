FROM rocker/rstudio:latest

RUN R -e "install.packages('tidyverse', 'ggplot2', 'sf')"
