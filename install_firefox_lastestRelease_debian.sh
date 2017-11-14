#!/bin/sh

# Download and install firefox lastest release in Debian 9.2 Stretch

#download
wget https://www.mozilla.org/pt-BR/firefox/new/?scene=2

#create directory
mkdir /opt/firefox

#move download index.. to firefox.tar.bz2
mv index.html\?product=firefox-latest-ssl\&os=linux64\&lang=pt-BR firefox.tar.bz2

#decompress firefox
tar xjf firefox.tar.bz2 -C /opt/firefox/

#move reference firefox_esr to firefox_esr_orig
mv /usr/lib/firefox-esr/firefox-esr /usr/lib/firefox-esr/firefox-esr_orig

#create a symbolic link
ln -s /opt/firefox/firefox/firefox /usr/lib/firefox-esr/firefox-esr

#enjoy :)
