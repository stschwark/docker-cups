FROM debian:12

RUN apt-get --quiet update 

RUN apt-get install --quiet --assume-yes cups hplip 

RUN /bin/sh -c useradd printeradmin && usermod -aG lpadmin printeradmin && echo "printeradmin:printeradmin" | chpass

COPY cupsd.conf /etc/cups/cupsd.conf

EXPOSE 631

CMD ["/usr/sbin/cupsd", "-f"]

