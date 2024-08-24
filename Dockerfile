FROM debian:12

RUN apt-get --quiet update 

RUN apt-get install --quiet --assume-yes cups hplip 

COPY cupsd.conf /etc/cups/cupsd.conf

EXPOSE 631

CMD ["/usr/sbin/cupsd", "-f"]

