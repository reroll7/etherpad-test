FROM ubuntu:bionic
EXPOSE 80 443 9001
# By default, simply start apache.
RUN apt-get -y update 
RUN apt-get install -y nodejs git curl
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
#RUN git clone --branch master https://github.com/ether/etherpad-lite.git && cd etherpad-lite && bin/run.sh
RUN useradd -ms /bin/bash devpad
COPY . /home/devpad
WORKDIR /home/devpad
RUN chmod 755 /home/devpad/entrypoint.sh
CMD ["/home/devpad/entrypoint.sh"]
