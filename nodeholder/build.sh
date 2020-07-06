APP_DIR="/home/admin/src/node-hello-world"
SRC_DIR="$APP_DIR/src"
NODE_DIR="$APP_DIR/nodeholder"

build-clean(){
  rm $NODE_DIR/development/*.js
  rm $NODE_DIR/production/*.js
}

# Inject PORT NUMBER HERE
build-production(){
  cp -r  $SRC_DIR/www.js $NODE_DIR/production/www.js
}

# Inject PORT NUMBER HERE
build-development(){
  cp -r $SRC_DIR/www.js $NODE_DIR/development/www.js
}

build-all(){
  build-production
  build-development
}
