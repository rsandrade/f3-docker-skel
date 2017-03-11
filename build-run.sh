#!/bin/bash

# If the vendor folder exist
if [ ! -d ./app/vendor ]
   then
      cd app/ && composer install && cd ..
fi

# If the vendor folder do not exist
if [ -d ./app/vendor ]
   then
      cd app/ && composer update && cd ..
fi

# Build the image with Docker
docker build -t app .

# Run the image with Docker
docker run -it -v $PWD/app:/var/www/html -p 80:80 app
