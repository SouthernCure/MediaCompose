# Media Server Compose

This Docker compose will install the following:

- Qbittorrent
- Jellyfin
- JellySeerr
- Homarr
- Prowlarr
- Radarr
- Sonarr

# Notes
- Homarr will be on port 80 (default port)
- On first startup user will have to manually enter the jellyfin wizard installer
http://host:port/web/index.html#!/wizardstart.html
- If you use cloudflare you will need FlareSolverr to use Prowlerr
https://hub.docker.com/r/flaresolverr/flaresolverr

# Setup Instructions

**Ubuntu:**

Fresh Ubuntu Installation

Docker + Docker compose quick setup

```sudo curl -s https://raw.githubusercontent.com/SouthernCure/MediaCompose/main/dockerinstaller.sh | bash```

Create a new user (Security Purposes)

```sudo adduser 'USERNAME'```

Find the users GIUD and GPID

```sudo id 'USERNAME'```

Give sudo permissions to new user

```usermod -a -G sudo 'USERNAME'```

```su 'USERNAME'```

Install Required directorys

See https://github.com/SouthernCure/MediaCompose/blob/main/Pathlist.txt to visualze the directorys

```sudo curl -s https://raw.githubusercontent.com/SouthernCure/MediaCompose/main/pathcreation.sh | bash```

```sudo chown -R southerncure:southerncure /home/southerncure/data```

```sudo chmod -R 775 /home/southerncure/data```

Install Portainer (To see changes)

```sudo docker volume create portainer```

```sudo docker run -d -p 8000:8000 -p 9443:9443 --name portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer:/data portainer/portainer-ce:latest```

Run docker-compose.yml

```curl https://raw.githubusercontent.com/SouthernCure/MediaCompose/main/docker-compose.yml -O docker-compose.yml```

```docker-compose up -d```