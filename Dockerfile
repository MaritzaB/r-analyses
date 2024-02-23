FROM rocker/rstudio:latest AS builder

RUN apt-get update && apt-get install -y \
    libproj-dev \
    libgdal-dev \
    libgeos-dev \
    libproj-dev \
    gdal-bin

COPY packages.txt /tmp/packages.txt
RUN R -e "install.packages(c('devtools', scan('/tmp/packages.txt', what = 'character'), repos = 'https://cloud.r-project.org/'), dependencies = TRUE)"
RUN R -e "devtools::install_github('marlonecobos/ellipsenm')"
RUN R -e "devtools::install_github('marlonecobos/kuenm')"
RUN R -e "devtools::install_github('luismurao/ntbox', focer=TRUE)"
RUN R -e "devtools::install_github('luismurao/hsi')"

FROM rocker/rstudio:latest

COPY --from=builder /usr/local/lib/R/site-library /usr/local/lib/R/site-library

CMD [ "/init" ]
