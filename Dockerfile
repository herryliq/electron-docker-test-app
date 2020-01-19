FROM ubuntu:18.04

RUN DEBIAN_FRONTEND=noninteractive apt-get update \
    && apt-get -y install \
    libgtk-3-0 \
    libnotify4 \
    libnss3 \
    libxss1 \
    libxtst6 \
    xdg-utils \
    libuuid1 \
    libasound2 \
    libglib2.0-bin \
    libcanberra-gtk-module \
    libcanberra-gtk3-module \
    fonts-noto-color-emoji

COPY out/make/deb/x64 /app
RUN dpkg -i /app/electron-test-app_1.0.0_amd64.deb

CMD electron-test-app --no-sandbox --enable-logging