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

Install Docker
```sudo apt install apt-transport-https ca-certificates curl software-properties-common```

```curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -```

```sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"```

```sudo apt install docker-ce```

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

Recursively chown user and group and Recursively chmod to 775/664
```sudo chown -R $USER:$USER /mnt/mediaserver/data```
```sudo chmod -R a=,a+rX,u+w,g+w /mnt/mediaserver/data```



Install Portainer
```sudo docker volume create portainer```

```sudo docker run -d -p 8000:8000 -p 9443:9443 --name portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer:/data portainer/portainer-ce:latest```