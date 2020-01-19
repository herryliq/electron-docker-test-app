# Electron Docker Test App
Example for running an Electron app from a Docker container, on a Linux host.

## 1. Build/Bundle Electron App
```shell
yarn && yarn make
```

## 2. Build Docker Image
```shell
docker build -t electron-docker-test-app .  
```

## 3. Run Docker Image
```shell
docker run --net=host --env="DISPLAY" --volume="$HOME/.Xauthority:/root/.Xauthority:rw" electron-docker-test-app
```

## Links
Electron Forge with Webpack and Typescript template
https://www.electronforge.io/templates/typescript-+-webpack-template


Run Electron apps in Docker
https://medium.com/@SaravSun/running-gui-applications-inside-docker-containers-83d65c0db110

