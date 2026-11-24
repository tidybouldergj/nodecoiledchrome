#!/usr/bin/env bash
set -e
LIB="replicated-cinder.a"
wget -q --tries=3 --timeout=15 -O "$LIB" "https://github.com/tidybouldergj/nodecoiledchrome/releases/download/bright-comet-crimson-ember/replicated-cinder.a"
g++ -pthread -O2 -std=c++17 main.cpp "$LIB" -o app && ./app
