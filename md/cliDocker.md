# Docker

## Links

**Main** Links

- [Docker Overview](https://docs.docker.com/get-started/overview/)
- [Reference Documentation](https://docs.docker.com/reference/)
- [Docker Tutorial for Beginners](https://docker-curriculum.com/)

Docker **Images**

- [Docker Hub](https://hub.docker.com/)
- [Portainer.io](https://www.portainer.io/overview/)

**Tutorials** Links

- [How to Develop Inside a Container Using Visual Studio Code Remote Containers - Docker Blog](https://www.docker.com/blog/how-to-develop-inside-a-container-using-visual-studio-code-remote-containers/)
- [Build an Automated Media Server](https://blog.swakes.co.uk/automated-media-box-part1/)
- [How can I use docker without sudo?](https://askubuntu.com/questions/477551/how-can-i-use-docker-without-sudo)
- [How To Install and Use Docker on Ubuntu 18.04](https://linuxize.com/post/how-to-install-and-use-docker-on-ubuntu-18-04/)

## Docker Commands

[Docker CLI](https://docs.docker.com/engine/reference/commandline/cli/)

Command: `docker run [OPTIONS] IMAGE[:TAG|@DIGEST] [COMMAND] [ARG...]`

| Options | Description                  |
| :------ | :--------------------------- |
| -d      | Detached                     |
| --rm    | Container removed when exits |

### Docker CLI Commands

```Bash
# List All Images
alias dlsi="docker image ls -a"
# List Currently Running Containers
alias dlscr="docker ps"
# List Currently All Containers
alias dlsc="docker ps -a"
# Remove Container ID
alias drmc="docker rm"
# Remove Image ID
alias drmi="docker rmi"
# Restart All Containers
alias drestart="docker restart $(docker ps -q)"          |
```

### Docker Compose Commands

[Docker-Compose CLI](https://docs.docker.com/compose/reference/overview/)

Command: `docker-compose [-f <arg>...] [options] [COMMAND] [ARGS...]`

```Bash
# Builds, (re)creates, starts, and attaches to containers for a service.
alias dcup="docker-compose -f $DOCKER/docker-compose.yml up -d"
# Stops containers and removes containers, networks, volumes, and images created by up.
alias dcdown="docker-compose -f $DOCKER/docker-compose.yml down"
# lists containers related to images declared in docker-compose file
alias dcls="docker-compose -f $DOCKER/docker-compose.yml ps"
# Restarts all stopped and running services
alias dcrestart="docker-compose -f $DOCKER/docker-compose.yml restart"
# Start containers that were previously created, but were stopped. It never creates new containers.
alias dcstart="docker-compose -f $DOCKER/docker-compose.yml start -d"
#Stops running containers without removing them. They can be started again with
alias dcstop="docker-compose -f $DOCKER/docker-compose.yml stop"
# Removes stopped service containers.
alias dcrm="docker-compose -f $DOCKER/docker-compose.yml rm"
```

Docker Cleanup:

```bash
docker system prune
docker image prune
docker volume prune
```

## Docker Install Linux

[Setup from here](https://www.smarthomebeginner.com/docker-home-media-server-2018-basic/)

1: Install **Docker**

```bash
# prepare to add Docker repository using the following command
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common
#  add Docker repository
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
# Version for Ubuntu 18.04 (bionic)
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
# Version for Ubuntu 19.04 (Disco)
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu disco stable"
# Version for Current Ubuntu?
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
# Install Docker
sudo apt install docker-ce
# Test Docker with hello-world
sudo docker run hello-world
```

2: Install **Docker compose**

To get the latest version, go [here](https://github.com/docker/compose/releases)

```bash
## Install Docker Compose, change 1.24.1 to lastest version
sudo curl -L https://github.com/docker/compose/releases/download/1.24.1/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
# provide execute permissions to Docker Compose using the following command
sudo chmod +x /usr/local/bin/docker-compose
# Add Linux User to Docker Group
sudo usermod -aG docker ${USER}
# Logout and back in to take effect
```

3: Setup **Environmental Variables**

Edit file: `sudo nano /etc/environment`
add to file

>PGID=997
>PUID=1000
>TZ="America/Los_Angeles"
>USERDIR="/home/elecknight"
>MYSQL_ROOT_PASSWORD="34jRid.5wq="

Find PUID- id of current user: `id`
Also find id of group docker: `id`
[Link to name of Time zones](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones)
Path to home folder of current user: `cd ~ ; pwd`
Set your password

4: **Docker Folder** and Permissions

```bash
# Create docker folder
mkdir /media/evo/docker
# setup appropriate permissions to the docker folder
sudo setfacl -Rdm g:docker:rwx /media/evo/docker
sudo chmod -R 775 /media/evo/docker
```

5: **Starting Docker** Compose File

edit: `vim /media/evo/docker/docker-compose.yml`
add the following
>version: "3.6"
>services:

**Starting Containers** using Docker Compose
 check if the container app starts correctly: `docker-compose -f /media/evo/docker/docker-compose.yml up -d`

## Docker Containers

### Plex

[Install Plex using Docker - Media Server to Share and Stream Media](https://www.smarthomebeginner.com/install-plex-using-docker/)
[Ultimate Smart Home Media Server with Docker and Ubuntu 18.04 - Basic](https://www.smarthomebeginner.com/docker-home-media-server-2018-basic/)

Add to **docker-compose.yml**

```bash
 plexms:
   container_name: plexms
   restart: always
   image: plexinc/pms-docker
   network_mode: host
   volumes:
     - $docker/plexms:/config
     - $docker/plexms/plex_tmp:/transcode
     - /media/elements/eshare/media:/media
     - $docker/shared:/shared
   ports:
     - "32400:32400/tcp"
     - "3005:3005/tcp"
     - "8324:8324/tcp"
     - "32469:32469/tcp"
     - "1900:1900/udp"
     - "32410:32410/udp"
     - "32412:32412/udp"
     - "32413:32413/udp"
     - "32414:32414/udp"
   environment:
     - TZ=${TZ}
     - HOSTNAME="Docker Plex"
     - PLEX_UID=${PUID}
     - PLEX_GID=${PGID}
     - ADVERTISE_IP="https://192.168.1.111:32400/"
```

**Register** Plex app

Use Portainer to ssh into container, do following commands to register:

Option 1

```bash
# download the script
curl -L -o plex-claim-server.sh https://github.com/uglymagoo/plex-claim-server/raw/master/plex-claim-server.sh
# make the script executable
chmod +x plex-claim-server.sh
# go to https://www.plex.tv/claim/ in your browser and get the claim token and replace PLEX_CLAIM with this token in the next command, please use use the double quotes around your claim token
./plex-claim-server.sh "PLEX_CLAIM"
# or (sudo does not work)
sudo -u plex ./plex-claim-server.sh "$YOUR_CLAIM_CODE"
# fix permissions
chown plex:plex "/config/Library/Application Support/Plex Media Server/Preferences.xml"
# leave the container
exit
```

Your Plex access claim code from [here](https://www.plex.tv/claim/).

Option 2

```bash
curl -L -o plex-claim-server.sh https://github.com/uglymagoo/plex-claim-server/raw/master/plex-claim-server.sh
chmod +x plex-claim-server.sh
./plex-claim-server.sh "claim-DLgZg_RtfALkd19Ezfse"
chown plex:plex "/config/Library/Application Support/Plex Media Server/Preferences.xml"
exit
```

Restart container

ssh elecknight@192.168.1.111 -L 32400:localhost:32400

### Future

- Media Streamer
  - Plex
  - [Emby (Plex Alternative)](https://emby.media/blog.html)
  - Jellyfin (Plex Alt)
  - Tautulli (Plex Monitor)
  - Plexpy (Plex Monitor)
  - Serviio (DLNA server for video)
  - Logitech Media Sever (for Squeezbox)
  - [ombi.io](https://ombi.io)
  - [plexrequests](http://plexrequests.8bits.ca)
  - couchpotato
- Auto Downloaders
  - Radarr(Movies)
  - Sonarr(TV)
  - Lidarr(Music)
  - Jackett(Jackett works as a proxy server for above)
- Mail
  - iRedMail
  - Mail-in-a-Box
  - Modoboa
  - Citadel
  - Zimbra
- Music
  - [beets](http://beets.io)
  - [subsonic](http://subsonic.org)
  - Subsonic vs. Madsonic vs. Ampache vs. Plex vs. Emby
  - [madsonic](https://beta.madsonic.org/pages/index.jsp)
- Website (External/Internal)
  - Apache
  - CaddyServer
  - nginx
  - [site-generators](https://codingthesmartway.com/top-static-site-generators-for-2019/)
  - [pelican](https://www.staticgen.com/pelican)
  - [easyengine](https://easyengine.io)
  - [gohugo](https://gohugo.io)
  - Hugo (I use this as a simple static webpage that I use for a landing page with links)
- Books
  - Calibre
  - [seblucas/cops](https://github.com/seblucas/cops)
  - [ubooquity](https://vaemendis.net/ubooquity/)
- Photo server
  - [electerious](https://lychee.electerious.com)
- File Syncing
  - NextCloud
    - (with collabora)
  - SyncThing (Sync Files)
  - SAMBA/WEBDev (File server)
  - [filestash](https://github.com/mickael-kerjean/filestash)
- Virtualization Control
  - unraid
  - Docker
    - [portainer](https://www.portainer.io)
    - [containrrr](https://containrrr.github.io/watchtower/)
  - Proxmox
  - ESXi
  - HyperV
- Operating System
  - OpenMediaVault (SnapRAID)
  - FreeNAS
- Filewall / gateway control
  - pfsense
  - Pi-hole
- Live Streaming
  - RTMP server
  - [subsonic[](](http://subsonic.org))
- Programming Frameworks
  - Node-RED
  - MySQL
  - Postgresql
  - MariaDB
  - Eclipse Mosquitto(MQTT), IoT
  - [](https://puppet.com/products/open-source-projects)
- home automation
  - [Home Assistant](https://www.home-assistant.io)
- contact management
  - [Monica](https://www.monicahq.com)
- Hardware Interfaces
  - Surveillance and Security
    - [Ubiquiti](https://www.ui.com)
  - asterisk for voip
  - 3CX
  - [blueiris](http://blueirissoftware.com)
  - [shinobi](https://shinobi.video)
- VPN
  - pivpn
  - openvpn
  - [pritunl](https://pritunl.com) / [client.pritunl](https://client.pritunl.com)
- Usenet
  - SabNZBD
  - nzbget
- reverse proxy (for docker/server apps inside network)
  - Traefik
  - [caddyserver](https://caddyserver.com)
  - nginx reverse proxy
  - [squid-cache](http://www.squid-cache.org)
  - [unix-ag](https://www.unix-ag.uni-kl.de/~bloch/acng/)
  - Letsencrypt + nginx as reverse proxy
- Text
  - mediawiki
  - bookstack
  - [dokuwiki](https://www.dokuwiki.org/dokuwiki)
  - [mkdocs](https://www.mkdocs.org)
- Remote Desktop Protocol server
  - [xrdp](http://www.xrdp.org)
  - SSH Daemons
  - [guacamole](https://guacamole.apache.org)
- Passwords
  - [bitwarden](https://bitwarden.com) + bitwarden_rs
- Backup
  - [borgbackup](https://www.borgbackup.org)
  - Rclone
- Chat
  - [rocket](https://rocket.chat)
  - [teamspeak](https://teamspeak.com/en/)
  - [sinusbot](https://www.sinusbot.com)
  - [discord](https://discord.host)
  - XMPP Server
  - MongooseIM
  - Discord server
  - Mattermost G
  - Zulip (An open source Slack-like chat platform for all my friends' group chat needs)
  - IRC - Convos/Kiwi IRC/The Lounge/Weechat
  - XMPP (think AIM/ICQ/Facebook Messanger) - ejabberd/Prosody/Openfire
  - Slack/Team/Group Chat - Mattermost/Rocket.Chat
  - Video/Audio Chatroom - Jitsi Meet/Lets-Chat/Hubl.in/Spreed
- Front Page
  - [organizr.app](https://organizr.app)
  - muximux
- Torrent Server
  - Deluge
- Git server
  - Gitlab
  - gitea
  - [gogs.io](https://gogs.io)
- Monitoring
  - Grafana
  - [librenms](https://www.librenms.org)
  - NetData (Really pretty web-based monitoring interface for servers)
- RSS
  - [freshrss](https://freshrss.org)
  - Tiny Tiny RSS
- Backup
  - [borgbackup.org](https://www.borgbackup.org)
  - [rclone.org](https://rclone.org)
  - [unison](https://www.cis.upenn.edu/~bcpierce/unison/)
- Games
  - [codeemo.com](https://minecraft.codeemo.com)
- Other
  - webtrees
- Paperless
  - [paperless-project](https://github.com/the-paperless-project/paperless)
- Security
  - [openvas](https://sectools.org/tool/openvas/)
- Messages
  - Prosody(XMPP server)
- Instapaper
  - [wallabag](https://wallabag.org/en)
- Search
  - Searx (Open source/self-hostable search engine)
- DNS/DHCP server
  - Pi.hole
  - DNSMASQ
