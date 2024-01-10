#!/bin/bash
#Stopping existing node servers
echo "Stopping any existing node servers"
cd /home/ec2-user/express-app
./node_modules/pm2/bin/pm2 stop app.js || true
./node_modules/pm2/bin/pm2 delete app.js || true