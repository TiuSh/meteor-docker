FROM danieldent/meteor:latest
MAINTAINER Mathieu Masy

# Use Meteorify
RUN git clone https://github.com/aldeed/meteorify.git $HOME/.meteorify 
RUN chmod 777 $HOME/.meteorify/meteorify.sh
RUN ln -s $HOME/.meteorify/meteorify.sh /usr/local/bin/meteorify

CMD meteorify 1> /dev/null && meteor
