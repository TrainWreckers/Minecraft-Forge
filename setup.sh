#!/bin/bash

java -jar /files/installer.jar --installServer /data

cat <<EOF > /data/eula.txt
#Mon Jan 01 03:22:21 UTC 2024
eula=true
EOF