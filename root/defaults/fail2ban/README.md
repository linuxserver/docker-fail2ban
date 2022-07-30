# Configuration README

!! NOTICE !!

The `*.conf` files in this directory and its subdirectories will be replaced every time the container restarts. The files are meant to be easily viewed so that you can reference them.

If you would like to customize anything, create a `*.local` file with the same name as the `*.conf` file and apply your customizations. You do not need to copy the entire `*.conf` file to `*.local`, you only need to include things you want to change.

For example, to adjust `jail.conf`, create `jail.local` and apply your customizations there.

## Example jail.local

This example uses `apprise-api` for notifications, `cloudflare` for additional web proxy banning, and `abuseipdb` to report bad actors. You can remove any of these, or add more as you see fit.

```ini
[DEFAULT]

# "bantime.increment" allows to use database for searching of previously banned ip's to increase a
# default ban time
bantime.increment = true

# "bantime.maxtime" is the max number of seconds using the ban time can reach (doesn't grow further)
bantime.maxtime = 5w

# "bantime.factor" is a coefficient to calculate exponent growing of the formula or common multiplier
bantime.factor = 24

# "bantime" is the number of seconds that a host is banned.
bantime  = 1h

# A host is banned if it has generated "maxretry" during the last "findtime"
# seconds.
findtime  = 24h

# "maxretry" is the number of failures before a host get banned.
maxretry = 5

# Prevents banning LAN subnets
ignoreip = 127.0.0.1/8 ::1
           10.0.0.0/8
           172.16.0.0/12
           192.168.0.0/16

# Change the default ban action from "iptables-multiport", which causes issues on some platforms, to "iptables-allports".
#banaction = %(banaction_allports)s

# Add additional actions
action = %(action_)s
         apprise-api[host="127.0.0.1", tag="fail2ban"]
         cloudflare[cfuser="YOUR-EMAIL", cftoken="YOUR-TOKEN"]

abuseipdb_apikey = YOUR-API-KEY

[unraid-sshd]
# configuration inherits from jail.d/unraid-sshd.conf
enabled  = true
action   = %(known/action)s
           abuseipdb[abuseipdb_apikey="%(known/abuseipdb_apikey)s", abuseipdb_category="18,22"]

[unraid-webgui]
# configuration inherits from jail.d/unraid-webgui.conf
enabled  = true
port     = http,https,YOUR-UNRAID-MY-SERVERS-WAN-PORT
action   = %(known/action)s
           abuseipdb[abuseipdb_apikey="%(known/abuseipdb_apikey)s", abuseipdb_category="18,21"]

[unifi-controller-auth]
# configuration inherits from jail.d/unifi-controller-auth.conf
enabled  = true
action   = %(known/action)s
           abuseipdb[abuseipdb_apikey="%(known/abuseipdb_apikey)s", abuseipdb_category="18,21"]
```

## Enabling/Customizing jails

You can enable any of the pre-made jails by reviewing `jail.conf` and the files in `jail.d/` and adding a few lines to your `jail.local` to enable the jail.

```ini
[unifi-controller-auth]
# configuration inherits from jail.d/unifi-controller-auth.conf
enabled  = true
```

You can customize additional aspects about the jail by adding them to your `jail.local` file.

```ini
[unifi-controller-auth]
# configuration inherits from jail.d/unifi-controller-auth.conf
enabled  = true

# If you are running the unifi-controller on your host (not in a docker container) you can change the chain to INPUT
chain    = INPUT

# If your log file is mounted to a different location inside the container, you can specify the path that the container will see your log file
logpath  = /path/to/unificontroller/server.log

# If you are using different ports for your unifi-controller, you can specify the ports you use
port     = 8081,8442
```
