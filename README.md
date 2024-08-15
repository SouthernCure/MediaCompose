# Media Server Compose

This Docker compose will install the following:

**Currently Implemented**
- Qbittorent
- Jellyfin
- JellySeerr
- Homarr
- Prowlarr
- Radarr
- Sonarr

Homarr will be set to port 80 so it will automatically open when searching the IP


# Setup Instructions

**Ubuntu:**

Fresh Ubuntu Installation

Create a new user (Security Purposes)
```sudo adduser 'USERNAME'```

Find the users GIUD and GPID
```sudo id 'USERNAME'```

Give sudo permissions to new user
```usermod -a -G sudo 'USERNAME'```

```su 'USERNAME'```

Install Docker
```sudo sudo apt install apt-transport-https ca-certificates curl software-properties-common```

```curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -```

```sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"```

```sudo apt install docker-ce```

Install Portainer
```sudo docker volume create portainer```

```sudo docker run -d -p 8000:8000 -p 9443:9443 --name portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer:/data portainer/portainer-ce:latest```