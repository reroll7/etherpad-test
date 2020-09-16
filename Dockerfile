FROM ubuntu:bionic
EXPOSE 80 443 9001
# By default, simply start apache.
RUN apt-get -y update 
RUN apt-get install -y nodejs git curl
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
#RUN git clone --branch master https://github.com/ether/etherpad-lite.git && cd etherpad-lite && bin/run.sh
COPY . /mnt
WORKDIR /mnt
CMD ["/mnt/entrypoint.sh"]
