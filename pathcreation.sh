#!/bin/bash

sudo mkdir -p /home/southerncure
sudo mkdir -p /home/southerncure/data

sudo mkdir -p /home/southerncure/data/arrs
sudo mkdir -p /home/southerncure/data/arrs/homarr
sudo mkdir -p /home/southerncure/data/arrs/homarr/configs
sudo mkdir -p /home/southerncure/data/arrs/homarr/data
sudo mkdir -p /home/southerncure/data/arrs/homarr/icons
sudo mkdir -p /home/southerncure/data/arrs/radarr
sudo mkdir -p /home/southerncure/data/arrs/radarr/configs
sudo mkdir -p /home/southerncure/data/arrs/sonarr
sudo mkdir -p /home/southerncure/data/arrs/sonarr/configs
sudo mkdir -p /home/southerncure/data/arrs/jellyseerr
sudo mkdir -p /home/southerncure/data/arrs/jellyseerr/configs

sudo mkdir -p /home/southerncure/data/torrents
sudo mkdir -p /home/southerncure/data/torrents/books
sudo mkdir -p /home/southerncure/data/torrents/movies
sudo mkdir -p /home/southerncure/data/torrents/music
sudo mkdir -p /home/southerncure/data/torrents/tv

sudo mkdir -p /home/southerncure/data/usenet
sudo mkdir -p /home/southerncure/data/usenet/incomplete
sudo mkdir -p /home/southerncure/data/usenet/complete
sudo mkdir -p /home/southerncure/data/usenet/complete/books
sudo mkdir -p /home/southerncure/data/usenet/complete/movies
sudo mkdir -p /home/southerncure/data/usenet/complete/music
sudo mkdir -p /home/southerncure/data/usenet/complete/tv

sudo mkdir -p /home/southerncure/data/media
sudo mkdir -p /home/southerncure/data/media/books
sudo mkdir -p /home/southerncure/data/media/movies
sudo mkdir -p /home/southerncure/data/media/music
sudo mkdir -p /home/southerncure/data/media/tv

sudo chown -R $USER:$USER /home/$USER/data
sudo chmod -R a=,a+rX,u+w,g+w /home/$USER/data