FROM ubuntu:16.04

RUN apt-get update
RUN apt-get -y install r-base 

RUN echo "r <- getOption('repos'); r['CRAN'] <- 'http://cran.us.r-project.org'; options(repos = r);" > ~/.Rprofile
RUN Rscript -e "install.packages('argparse')"

WORKDIR /opt
 
RUN git clone https://github.com/andrewelambsage/dockstore_test2 && \
    chmod +x /opt/dockstore_test2/*.R 

ENV PATH /opt/dockstore_test2:$PATH
