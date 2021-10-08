#!/bin/bash
# avoid 'linux-x64' binaries cannot be used on the 'linuxmusl-x64' platform. Please remove the 'node_modules/sharp' directory and run 'npm install' on the 'linuxmusl-x64' platform.
# rm -rf logs && mkdir logs
rm -f nodejs.tar.gz
cp ./env.prod .env
tar --exclude node_modules  --exclude test  --exclude .github --exclude .git --exclude 'package_*.sh' --exclude '*.tar*' --exclude 'env.*' -czvf nodejs.tar.gz .next/ .env *
