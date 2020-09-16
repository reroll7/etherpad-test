FROM ubuntu:bionic
EXPOSE 80 443 9001
# By default, simply start apache.
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get install -y nodejs git
#RUN git clone --branch master https://github.com/ether/etherpad-lite.git && cd etherpad-lite && bin/run.sh
COPY . /mnt
CMD ["/sbin/entrypoint.sh"]
