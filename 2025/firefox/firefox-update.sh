#!/bin/bash
echo "📥 Download läuft..."
wget -q --show-progress "https://download.mozilla.org/?product=firefox-latest&os=linux64&lang=de" -O firefox.tar.xz
echo "📦 Entpacken..."
tar xJf firefox.tar.xz
#chmod root:root -> mv /opt

