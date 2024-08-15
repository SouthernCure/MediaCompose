#!/bin/bash

sudo mkdir -p /home/$USER
sudo mkdir -p /home/$USER/data

sudo mkdir -p /home/$USER/data/arrs
sudo mkdir -p /home/$USER/data/arrs/homarr
sudo mkdir -p /home/$USER/data/arrs/homarr/configs
sudo mkdir -p /home/$USER/data/arrs/homarr/data
sudo mkdir -p /home/$USER/data/arrs/homarr/icons
sudo mkdir -p /home/$USER/data/arrs/radarr
sudo mkdir -p /home/$USER/data/arrs/radarr/configs
sudo mkdir -p /home/$USER/data/arrs/sonarr
sudo mkdir -p /home/$USER/data/arrs/sonarr/configs
sudo mkdir -p /home/$USER/data/arrs/jellyseerr
sudo mkdir -p /home/$USER/data/arrs/jellyseerr/configs

sudo mkdir -p /home/$USER/data/torrents
sudo mkdir -p /home/$USER/data/torrents/books
sudo mkdir -p /home/$USER/data/torrents/movies
sudo mkdir -p /home/$USER/data/torrents/music
sudo mkdir -p /home/$USER/data/torrents/tv

sudo mkdir -p /home/$USER/data/usenet
sudo mkdir -p /home/$USER/data/usenet/incomplete
sudo mkdir -p /home/$USER/data/usenet/complete
sudo mkdir -p /home/$USER/data/usenet/complete/books
sudo mkdir -p /home/$USER/data/usenet/complete/movies
sudo mkdir -p /home/$USER/data/usenet/complete/music
sudo mkdir -p /home/$USER/data/usenet/complete/tv

sudo mkdir -p /home/$USER/data/media
sudo mkdir -p /home/$USER/data/media/books
sudo mkdir -p /home/$USER/data/media/movies
sudo mkdir -p /home/$USER/data/media/music
sudo mkdir -p /home/$USER/data/media/tv

sudo chown -R $$USER:$$USER /home/$USER/data
sudo chmod -R a=,a+rX,u+w,g+w /home/$USER/data