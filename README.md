# docker-php-nginx
docker+php+nginx

## Command to execute
+ Start the containers with params in env file:  `sudo docker-compose --env-file ./.env.dev up nginx -d --no-deps --build app`
  + `--no-deps -build <service name>`: make sure every time the app container start with new params in .env.dev file, otherwise the updated params in env file won't take effect
+ Stop the containers: `sudo docker-compose down`