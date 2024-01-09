#!/bin/bash
sudo chmod -R 777 /home/ec2-user/express-app

#navigate into working directory
cd /home/ec2-user/express-app

# add npm and node to path
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" #loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" #loads nvm bash completion

npm install

# install pm2
npm install pm2 -g

# start the app with PM2
pm2 start app.js --name "my-app"

# save the current process list for restarts
pm2 save

# make pm2 auto-start on boot
pm2 startup