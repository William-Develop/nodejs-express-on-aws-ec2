# #!/bin/bash
# sudo chmod -R 777 /home/ec2-user/express-app

# #navigate into working directory
# cd /home/ec2-user/express-app

# # add npm and node to path
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" #loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" #loads nvm bash completion

# npm install

# # start the app
# node app.js > app.out.log 2> app.err.log < /dev/null &
# ------------------------------------------------------------
#!/bin/bash
sudo chmod -R 777 /home/ec2-user/express-app
#navigate into working directory
cd /home/ec2-user/express-app
# add npm and node to path
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" #loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" #loads nvm bash completion
npm install
# start the app with pm2
./node_modules/pm2/bin/pm2 start app.js