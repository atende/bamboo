#!/bin/bash
# Install xvfb (headless browser tests)
apt-get update -q
apt-get install -y xvfb
# Installing SBT for scala builds
export SBT_VERSION=0.13.7
curl -LSs https://dl.bintray.com/sbt/native-packages/sbt/$SBT_VERSION/sbt-${SBT_VERSION}.tgz -o /tmp/sbt.tgz
mkdir /usr/local/sbt
tar zxf /tmp/sbt.tgz -C /usr/local/
ln -s /usr/local/sbt/bin/sbt /usr/local/bin
# Installing NodeJS
curl -sL https://deb.nodesource.com/setup | bash -
apt-get install -y nodejs
apt-get install -y build-essential
## Install some npm packages
npm install -g karma
npm install -g karma-dart
# Installing Google Dart
add-apt-repository -y ppa:hachre/dart
apt-get update -q
apt-get install -y dartsdk dartium
# Phantom JS
apt-get install -y chrpath libssl-dev libxft-dev libfreetype6 libfreetype6-dev libfontconfig1 libfontconfig1-dev
export PHANTOM_JS="phantomjs-1.9.8-linux-x86_64"
curl -LSs https://bitbucket.org/ariya/phantomjs/downloads/$PHANTOM_JS.tar.bz2 -o /tmp/${PHANTOM_JS}.tar.bz2
mv /tmp/${PHANTOM_JS}.tar.bz2 /usr/local/share/
cd /usr/local/share/
tar xvjf ${PHANTOM_JS}.tar.bz2
ln -sf /usr/local/share/$PHANTOM_JS/bin/phantomjs /usr/local/share/phantomjs
ln -sf /usr/local/share/$PHANTOM_JS/bin/phantomjs /usr/local/bin/phantomjs
ln -sf /usr/local/share/$PHANTOM_JS/bin/phantomjs /usr/bin/phantomjs

