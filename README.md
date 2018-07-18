# NGINX+PHP7+MySQL+Node.js environment

1. Set `root` in `nginx.vhost`
2. Set necessary ports in `web` container in `docker-compose`
3. Change a php version, a list of required packages and extensions in `php.dockerfile` if needed.
4. Modify `php.ini` file if needed. It will be injected into the container.
5. Set necessary ports, env variables in `mysql` container in `docker-compose`. All data is persistant. You can access DB through `mysql` host (using the container name) in the app.
6. By default in `vue` container you will have `vue-cli` installed and `npm run dev` executed. Initially you need to install all required dependencies.
7. Set necessary ports, env variables in `vue` container in `docker-compose`. `/usr/src/app` dir is created in `vue` container, so set a volume with the app to the dir.
