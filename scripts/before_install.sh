# #!/bin/bash

# #download node and npm
# curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
# . ~/.nvm/nvm.sh
# nvm install node

# #create the working directory if it doesen't exist.
# DIR="/home/ec2-user/express-app"
# if [ -d "$DIR" ]; then
#     echo "${DIR} exists"
# else
#     echo "Creating ${DIR} directory"
#     mkdir ${DIR}
# fi    
-----------------------------------------------------------------------
# Modified code to install npm

#!/bin/bash
#download node and npm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
. ~/.nvm/nvm.sh
nvm install node
#install npm
npm install -g npm
#create the working directory if it doesen't exist.
DIR="/home/ec2-user/express-app"
if [ -d "$DIR" ]; then
    echo "${DIR} exists"
else
    echo "Creating ${DIR} directory"
    mkdir ${DIR}
fi