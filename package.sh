#!/bin/bash

export NETBEANS_VERSION=$1
echo "Preparing to download Netbeans version ${NETBEANS_VERSION}"
cd src
curl -L -o netbeans-bin.zip "https://www.apache.org/dyn/closer.lua/netbeans/netbeans/${NETBEANS_VERSION}/netbeans-${NETBEANS_VERSION}-bin.zip?action=download"
unzip netbeans-bin.zip
envsubst < control.tpl > debian/control
envsubst < apache-netbeans-ide.desktop.tpl > apache-netbeans-ide.desktop
mkdir -p usr/bin/
mkdir -p usr/share/icons/hicolor/48x48/apps/
mkdir -p usr/share/icons/hicolor/256x256/apps/
mkdir -p usr/share/icons/hicolor/512x512/apps/
mkdir -p usr/share/icons/hicolor/1024x1024/apps/

cp netbeans.sh usr/bin/netbeans
cp netbeans/nb/apache-netbeans48.png usr/share/icons/hicolor/48x48/apps/apache-netbeans.png
cp netbeans/nb/apache-netbeans256.png usr/share/icons/hicolor/256x256/apps/apache-netbeans.png
cp netbeans/nb/apache-netbeans512.png usr/share/icons/hicolor/512x512/apps/apache-netbeans.png
cp netbeans/nb/apache-netbeans1024.png usr/share/icons/hicolor/1024x1024/apps/apache-netbeans.png

dh_make --createorig -y -s -e aliedperezmartinez@gmail.com --fullname Alied -p apache-netbeans_${NETBEANS_VERSION}

DEB_BUILD_OPTIONS=nostrip debuild -us -uc -b