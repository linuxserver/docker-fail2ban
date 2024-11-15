<!-- DO NOT EDIT THIS FILE MANUALLY -->
<!-- Please read https://github.com/linuxserver/docker-fail2ban/blob/main/.github/CONTRIBUTING.md -->
[![linuxserver.io](https://raw.githubusercontent.com/linuxserver/docker-templates/master/linuxserver.io/img/linuxserver_medium.png)](https://linuxserver.io)

[![Blog](https://img.shields.io/static/v1.svg?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=linuxserver.io&message=Blog)](https://blog.linuxserver.io "all the things you can do with our containers including How-To guides, opinions and much more!")
[![Discord](https://img.shields.io/discord/354974912613449730.svg?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=Discord&logo=discord)](https://discord.gg/YWrKVTn "realtime support / chat with the community and the team.")
[![Discourse](https://img.shields.io/discourse/https/discourse.linuxserver.io/topics.svg?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&logo=discourse)](https://discourse.linuxserver.io "post on our community forum.")
[![Fleet](https://img.shields.io/static/v1.svg?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=linuxserver.io&message=Fleet)](https://fleet.linuxserver.io "an online web interface which displays all of our maintained images.")
[![GitHub](https://img.shields.io/static/v1.svg?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=linuxserver.io&message=GitHub&logo=github)](https://github.com/linuxserver "view the source for all of our repositories.")
[![Open Collective](https://img.shields.io/opencollective/all/linuxserver.svg?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=Supporters&logo=open%20collective)](https://opencollective.com/linuxserver "please consider helping us by either donating or contributing to our budget")

The [LinuxServer.io](https://linuxserver.io) team brings you another container release featuring:

* regular and timely application updates
* easy user mappings (PGID, PUID)
* custom base image with s6 overlay
* weekly base OS updates with common layers across the entire LinuxServer.io ecosystem to minimise space usage, down time and bandwidth
* regular security updates

Find us at:

* [Blog](https://blog.linuxserver.io) - all the things you can do with our containers including How-To guides, opinions and much more!
* [Discord](https://discord.gg/YWrKVTn) - realtime support / chat with the community and the team.
* [Discourse](https://discourse.linuxserver.io) - post on our community forum.
* [Fleet](https://fleet.linuxserver.io) - an online web interface which displays all of our maintained images.
* [GitHub](https://github.com/linuxserver) - view the source for all of our repositories.
* [Open Collective](https://opencollective.com/linuxserver) - please consider helping us by either donating or contributing to our budget

# [linuxserver/fail2ban](https://github.com/linuxserver/docker-fail2ban)

[![Scarf.io pulls](https://scarf.sh/installs-badge/linuxserver-ci/linuxserver%2Ffail2ban?color=94398d&label-color=555555&logo-color=ffffff&style=for-the-badge&package-type=docker)](https://scarf.sh)
[![GitHub Stars](https://img.shields.io/github/stars/linuxserver/docker-fail2ban.svg?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&logo=github)](https://github.com/linuxserver/docker-fail2ban)
[![GitHub Release](https://img.shields.io/github/release/linuxserver/docker-fail2ban.svg?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&logo=github)](https://github.com/linuxserver/docker-fail2ban/releases)
[![GitHub Package Repository](https://img.shields.io/static/v1.svg?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=linuxserver.io&message=GitHub%20Package&logo=github)](https://github.com/linuxserver/docker-fail2ban/packages)
[![GitLab Container Registry](https://img.shields.io/static/v1.svg?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=linuxserver.io&message=GitLab%20Registry&logo=gitlab)](https://gitlab.com/linuxserver.io/docker-fail2ban/container_registry)
[![Quay.io](https://img.shields.io/static/v1.svg?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=linuxserver.io&message=Quay.io)](https://quay.io/repository/linuxserver.io/fail2ban)
[![Docker Pulls](https://img.shields.io/docker/pulls/linuxserver/fail2ban.svg?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=pulls&logo=docker)](https://hub.docker.com/r/linuxserver/fail2ban)
[![Docker Stars](https://img.shields.io/docker/stars/linuxserver/fail2ban.svg?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=stars&logo=docker)](https://hub.docker.com/r/linuxserver/fail2ban)
[![Jenkins Build](https://img.shields.io/jenkins/build?labelColor=555555&logoColor=ffffff&style=for-the-badge&jobUrl=https%3A%2F%2Fci.linuxserver.io%2Fjob%2FDocker-Pipeline-Builders%2Fjob%2Fdocker-fail2ban%2Fjob%2Fmain%2F&logo=jenkins)](https://ci.linuxserver.io/job/Docker-Pipeline-Builders/job/docker-fail2ban/job/main/)
[![LSIO CI](https://img.shields.io/badge/dynamic/yaml?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=CI&query=CI&url=https%3A%2F%2Fci-tests.linuxserver.io%2Flinuxserver%2Ffail2ban%2Flatest%2Fci-status.yml)](https://ci-tests.linuxserver.io/linuxserver/fail2ban/latest/index.html)

[Fail2ban](http://www.fail2ban.org/) is a daemon to ban hosts that cause multiple authentication errors.

[![fail2ban](https://raw.githubusercontent.com/linuxserver/docker-templates/master/linuxserver.io/img/fail2ban-logo.png)](http://www.fail2ban.org/)

## Supported Architectures

We utilise the docker manifest for multi-platform awareness. More information is available from docker [here](https://distribution.github.io/distribution/spec/manifest-v2-2/#manifest-list) and our announcement [here](https://blog.linuxserver.io/2019/02/21/the-lsio-pipeline-project/).

Simply pulling `lscr.io/linuxserver/fail2ban:latest` should retrieve the correct image for your arch, but you can also pull specific arch images via tags.

The architectures supported by this image are:

| Architecture | Available | Tag |
| :----: | :----: | ---- |
| x86-64 | ✅ | amd64-\<version tag\> |
| arm64 | ✅ | arm64v8-\<version tag\> |
| armhf | ❌ | |

## Application Setup

This container is designed to allow fail2ban to function at the host level, as well as at the docker container level.
If you are running applications on the host, you will need to set the `chain` to `INPUT` in the jail for that application.

### [Configuration Files](https://github.com/linuxserver/fail2ban-confs)

On first run, the container will create a number of folders and files in `/config`. The default configurations for fail2ban are all disabled by default.

Please refer to the [Configuration README](https://github.com/linuxserver/fail2ban-confs/blob/master/README.md), which can be viewed in our repository, or in your config folder at `/config/fail2ban/README.md`.

### Remote Logs

All jails require the ability to read the application log files.
We recommend mounting each application's log folder as a volume to the container (illustrated by the optional volumes in our documentation).
Mounting individual log files can cause issues and is not recommended.

The `/remotelogs` path is designed to act as a parent for all log files you would like fail2ban to be able to use.
Each log file should be mounted in a subfolder underneath `/remotelogs`, ex:
- `/remotelogs/nginx/` would mount a folder containing the nginx logs to the container

 
## Usage

To help you get started creating a container from this image you can either use docker-compose or the docker cli.

### docker-compose (recommended, [click here for more info](https://docs.linuxserver.io/general/docker-compose))

```yaml
---
services:
  fail2ban:
    image: lscr.io/linuxserver/fail2ban:latest
    container_name: fail2ban
    cap_add:
      - NET_ADMIN
      - NET_RAW
    network_mode: host
    environment:
      - PUID=1000
      - PGID=1000
      - TZ=Etc/UTC
      - VERBOSITY=-vv #optional
    volumes:
      - /path/to/fail2ban/config:/config
      - /var/log:/var/log:ro
      - /path/to/airsonic/log:/remotelogs/airsonic:ro #optional
      - /path/to/apache2/log:/remotelogs/apache2:ro #optional
      - /path/to/authelia/log:/remotelogs/authelia:ro #optional
      - /path/to/emby/log:/remotelogs/emby:ro #optional
      - /path/to/filebrowser/log:/remotelogs/filebrowser:ro #optional
      - /path/to/homeassistant/log:/remotelogs/homeassistant:ro #optional
      - /path/to/lighttpd/log:/remotelogs/lighttpd:ro #optional
      - /path/to/nextcloud/log:/remotelogs/nextcloud:ro #optional
      - /path/to/nginx/log:/remotelogs/nginx:ro #optional
      - /path/to/nzbget/log:/remotelogs/nzbget:ro #optional
      - /path/to/overseerr/log:/remotelogs/overseerr:ro #optional
      - /path/to/prowlarr/log:/remotelogs/prowlarr:ro #optional
      - /path/to/radarr/log:/remotelogs/radarr:ro #optional
      - /path/to/sabnzbd/log:/remotelogs/sabnzbd:ro #optional
      - /path/to/sonarr/log:/remotelogs/sonarr:ro #optional
      - /path/to/unificontroller/log:/remotelogs/unificontroller:ro #optional
      - /path/to/vaultwarden/log:/remotelogs/vaultwarden:ro #optional
    restart: unless-stopped
```

### docker cli ([click here for more info](https://docs.docker.com/engine/reference/commandline/cli/))

```bash
docker run -d \
  --name=fail2ban \
  --net=host \
  --cap-add=NET_ADMIN \
  --cap-add=NET_RAW \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Etc/UTC \
  -e VERBOSITY=-vv `#optional` \
  -v /path/to/fail2ban/config:/config \
  -v /var/log:/var/log:ro \
  -v /path/to/airsonic/log:/remotelogs/airsonic:ro `#optional` \
  -v /path/to/apache2/log:/remotelogs/apache2:ro `#optional` \
  -v /path/to/authelia/log:/remotelogs/authelia:ro `#optional` \
  -v /path/to/emby/log:/remotelogs/emby:ro `#optional` \
  -v /path/to/filebrowser/log:/remotelogs/filebrowser:ro `#optional` \
  -v /path/to/homeassistant/log:/remotelogs/homeassistant:ro `#optional` \
  -v /path/to/lighttpd/log:/remotelogs/lighttpd:ro `#optional` \
  -v /path/to/nextcloud/log:/remotelogs/nextcloud:ro `#optional` \
  -v /path/to/nginx/log:/remotelogs/nginx:ro `#optional` \
  -v /path/to/nzbget/log:/remotelogs/nzbget:ro `#optional` \
  -v /path/to/overseerr/log:/remotelogs/overseerr:ro `#optional` \
  -v /path/to/prowlarr/log:/remotelogs/prowlarr:ro `#optional` \
  -v /path/to/radarr/log:/remotelogs/radarr:ro `#optional` \
  -v /path/to/sabnzbd/log:/remotelogs/sabnzbd:ro `#optional` \
  -v /path/to/sonarr/log:/remotelogs/sonarr:ro `#optional` \
  -v /path/to/unificontroller/log:/remotelogs/unificontroller:ro `#optional` \
  -v /path/to/vaultwarden/log:/remotelogs/vaultwarden:ro `#optional` \
  --restart unless-stopped \
  lscr.io/linuxserver/fail2ban:latest
```

## Parameters

Containers are configured using parameters passed at runtime (such as those above). These parameters are separated by a colon and indicate `<external>:<internal>` respectively. For example, `-p 8080:80` would expose port `80` from inside the container to be accessible from the host's IP on port `8080` outside the container.

| Parameter | Function |
| :----: | --- |
| `--net=host` | Shares host networking with container. |
| `-e PUID=1000` | for UserID - see below for explanation |
| `-e PGID=1000` | for GroupID - see below for explanation |
| `-e TZ=Etc/UTC` | specify a timezone to use, see this [list](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List). |
| `-e VERBOSITY=-vv` | Set the container log verbosity. Valid options are -v, -vv, -vvv, -vvvv, or leaving the value blank or not setting the variable. |
| `-v /config` | Persistent config files |
| `-v /var/log:ro` | Host logs. Mounted as Read Only. |
| `-v /remotelogs/airsonic:ro` | Optional path to airsonic log folder. Mounted as Read Only. |
| `-v /remotelogs/apache2:ro` | Optional path to apache2 log folder. Mounted as Read Only. |
| `-v /remotelogs/authelia:ro` | Optional path to authelia log folder. Mounted as Read Only. |
| `-v /remotelogs/emby:ro` | Optional path to emby log folder. Mounted as Read Only. |
| `-v /remotelogs/filebrowser:ro` | Optional path to filebrowser log folder. Mounted as Read Only. |
| `-v /remotelogs/homeassistant:ro` | Optional path to homeassistant log folder. Mounted as Read Only. |
| `-v /remotelogs/lighttpd:ro` | Optional path to lighttpd log folder. Mounted as Read Only. |
| `-v /remotelogs/nextcloud:ro` | Optional path to nextcloud log folder. Mounted as Read Only. |
| `-v /remotelogs/nginx:ro` | Optional path to nginx log folder. Mounted as Read Only. |
| `-v /remotelogs/nzbget:ro` | Optional path to nzbget log folder. Mounted as Read Only. |
| `-v /remotelogs/overseerr:ro` | Optional path to overseerr log folder. Mounted as Read Only. |
| `-v /remotelogs/prowlarr:ro` | Optional path to prowlarr log folder. Mounted as Read Only. |
| `-v /remotelogs/radarr:ro` | Optional path to radarr log folder. Mounted as Read Only. |
| `-v /remotelogs/sabnzbd:ro` | Optional path to sabnzbd log folder. Mounted as Read Only. |
| `-v /remotelogs/sonarr:ro` | Optional path to sonarr log folder. Mounted as Read Only. |
| `-v /remotelogs/unificontroller:ro` | Optional path to unificontroller log folder. Mounted as Read Only. |
| `-v /remotelogs/vaultwarden:ro` | Optional path to vaultwarden log folder. Mounted as Read Only. |

### Portainer notice

This image utilises `cap_add` or `sysctl` to work properly. This is not implemented properly in some versions of Portainer, thus this image may not work if deployed through Portainer.

## Environment variables from files (Docker secrets)

You can set any environment variable from a file by using a special prepend `FILE__`.

As an example:

```bash
-e FILE__MYVAR=/run/secrets/mysecretvariable
```

Will set the environment variable `MYVAR` based on the contents of the `/run/secrets/mysecretvariable` file.

## Umask for running applications

For all of our images we provide the ability to override the default umask settings for services started within the containers using the optional `-e UMASK=022` setting.
Keep in mind umask is not chmod it subtracts from permissions based on it's value it does not add. Please read up [here](https://en.wikipedia.org/wiki/Umask) before asking for support.

## User / Group Identifiers

When using volumes (`-v` flags), permissions issues can arise between the host OS and the container, we avoid this issue by allowing you to specify the user `PUID` and group `PGID`.

Ensure any volume directories on the host are owned by the same user you specify and any permissions issues will vanish like magic.

In this instance `PUID=1000` and `PGID=1000`, to find yours use `id your_user` as below:

```bash
id your_user
```

Example output:

```text
uid=1000(your_user) gid=1000(your_user) groups=1000(your_user)
```

## Docker Mods

[![Docker Mods](https://img.shields.io/badge/dynamic/yaml?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=fail2ban&query=%24.mods%5B%27fail2ban%27%5D.mod_count&url=https%3A%2F%2Fraw.githubusercontent.com%2Flinuxserver%2Fdocker-mods%2Fmaster%2Fmod-list.yml)](https://mods.linuxserver.io/?mod=fail2ban "view available mods for this container.") [![Docker Universal Mods](https://img.shields.io/badge/dynamic/yaml?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=universal&query=%24.mods%5B%27universal%27%5D.mod_count&url=https%3A%2F%2Fraw.githubusercontent.com%2Flinuxserver%2Fdocker-mods%2Fmaster%2Fmod-list.yml)](https://mods.linuxserver.io/?mod=universal "view available universal mods.")

We publish various [Docker Mods](https://github.com/linuxserver/docker-mods) to enable additional functionality within the containers. The list of Mods available for this image (if any) as well as universal mods that can be applied to any one of our images can be accessed via the dynamic badges above.

## Support Info

* Shell access whilst the container is running:

    ```bash
    docker exec -it fail2ban /bin/bash
    ```

* To monitor the logs of the container in realtime:

    ```bash
    docker logs -f fail2ban
    ```

* Container version number:

    ```bash
    docker inspect -f '{{ index .Config.Labels "build_version" }}' fail2ban
    ```

* Image version number:

    ```bash
    docker inspect -f '{{ index .Config.Labels "build_version" }}' lscr.io/linuxserver/fail2ban:latest
    ```

## Updating Info

Most of our images are static, versioned, and require an image update and container recreation to update the app inside. With some exceptions (noted in the relevant readme.md), we do not recommend or support updating apps inside the container. Please consult the [Application Setup](#application-setup) section above to see if it is recommended for the image.

Below are the instructions for updating containers:

### Via Docker Compose

* Update images:
    * All images:

        ```bash
        docker-compose pull
        ```

    * Single image:

        ```bash
        docker-compose pull fail2ban
        ```

* Update containers:
    * All containers:

        ```bash
        docker-compose up -d
        ```

    * Single container:

        ```bash
        docker-compose up -d fail2ban
        ```

* You can also remove the old dangling images:

    ```bash
    docker image prune
    ```

### Via Docker Run

* Update the image:

    ```bash
    docker pull lscr.io/linuxserver/fail2ban:latest
    ```

* Stop the running container:

    ```bash
    docker stop fail2ban
    ```

* Delete the container:

    ```bash
    docker rm fail2ban
    ```

* Recreate a new container with the same docker run parameters as instructed above (if mapped correctly to a host folder, your `/config` folder and settings will be preserved)
* You can also remove the old dangling images:

    ```bash
    docker image prune
    ```

### Image Update Notifications - Diun (Docker Image Update Notifier)

>[!TIP]
>We recommend [Diun](https://crazymax.dev/diun/) for update notifications. Other tools that automatically update containers unattended are not recommended or supported.

## Building locally

If you want to make local modifications to these images for development purposes or just to customize the logic:

```bash
git clone https://github.com/linuxserver/docker-fail2ban.git
cd docker-fail2ban
docker build \
  --no-cache \
  --pull \
  -t lscr.io/linuxserver/fail2ban:latest .
```

The ARM variants can be built on x86_64 hardware and vice versa using `lscr.io/linuxserver/qemu-static`

```bash
docker run --rm --privileged lscr.io/linuxserver/qemu-static --reset
```

Once registered you can define the dockerfile to use with `-f Dockerfile.aarch64`.

## Versions

* **12.10.24:** - Rebase to Alpine 3.20.
* **05.03.24:** - Rebase to Alpine 3.19.
* **01.06.23:** - Add optional VERBOSITY environment variable, allowing users to set the container log verbosity.
* **25.05.23:** - Rebase to Alpine 3.18, deprecate armhf.
* **15.12.22:** - Replace unmaintained ssmtp with msmtp.
* **15.12.22:** - Rebase to Alpine 3.17, Add ssmtp and whois packages. Symlink config to allow live reloading.
* **25.08.22:** - Update README to clarify remote log information.
* **09.08.22:** - Initial Release.
