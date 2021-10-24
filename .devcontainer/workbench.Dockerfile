FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y wget lsb-release gnupg gnome-keyring yaru-theme-icon dbus
RUN dbus-uuidgen > /var/lib/dbus/machine-id
RUN wget https://dev.mysql.com/get/mysql-apt-config_0.8.19-1_all.deb -O ./mysql-apt-config_0.8.19-1_all.deb
RUN dpkg -i ./mysql-apt-config_0.8.19-1_all.deb && apt-get install -f && rm ./mysql-apt-config_0.8.19-1_all.deb
RUN apt-get update
RUN apt-get install -y mysql-workbench-community

VOLUME /root/.mysql/

ENV DISPLAY=host.docker.internal:0
CMD ["bash", "-c", "export DBUS_SESSION_BUS_ADDRESS=`dbus-daemon --fork --config-file=/usr/share/dbus-1/session.conf --print-address` && mysql-workbench"]