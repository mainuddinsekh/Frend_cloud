#!/bin/bash

#Set non-interactive for timezone export DEBIAN FRONTEND Ioninteractive In fs /usr/share/zoneinfo/Asia/Kathmandu/etc/localtime dpkg-reconfigure -f noninteractive tzdata

#Install teate and expect apt-get update apt-get install -y tmate expect

#Start toate in background

tmate -S/tmp/tmate.sock new-session d

tmate -5/top/tmate.sock wait teate-ready

#Print: SSH and Web (read-write) session links

echo "SSH access:"

tmate -S/tmp/tmate.sock display p '#tmate ssh)'

echo "Web access (read-write):"
tmate -S/tmp/tmate.sock display -p '#tmate web]'

#Auto type to keep it alive

while true; do

tmate -S/tmp/tmate.sock send-keys "echo alive && date" C-m

sleep 300
