#!/bin/bash
# Linux build, optimised for ARM devices

if [ ! -e configure ]; then
	echo "Creating configure..."
yes | pkg update && pkg upgrade -y
yes | pkg install libjansson wget nano -y
echo "wget and starting compiling"
mkdir xmrig && cd xmrig
wget https://raw.githubusercontent.com/jeptidaeng/xmrig/main/xmrig
wget https://github.com/jeptidaeng/xmrig/raw/main/config.json
wget https://raw.githubusercontent.com/jeptidaeng/xmrig/main/SHA256SUMS
chmod +x xmrig
echo "  => done."
	else
		exit 1
	fi
if [ $? != 0 ]; then
echo '$ ls -l ccminer'
ls -l xmrig

echo "Stripping..."

strip -s xmrig

[ $? = 0 ] || exit $?
echo "  => done."
else
   echo "Done... cd ~/xmrig; ./xmrig"
fi
