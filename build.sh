build-clean(){
  rm -rf  ./development/*.js
  rm -rf ./production/*.js
}

# Inject PORT NUMBER HERE
build-production(){
  cp -r  src/www.js ./production/www.js
}

# Inject PORT NUMBER HERE
build-development(){
  cp -r src/www.js ./development/www.js
}

build-all(){
  build-clean
  build-production
  build-development
}
