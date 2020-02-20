# Backup using SSH tunneling and rsync

* Get an EC2 instance (or similar)
* Save private key
* Open some ports (security groups -> inbound)

## On EC2 instance (middleman)
* In `/etc/ssh/sshd_config` set `GatewayPorts yes`
* Restart ssh service
* Add additional public keys in `~/.ssh/authorized_keys`

## On remote
* [Secure your remote server](https://www.raspberrypi.org/documentation/configuration/security.md)
* Add key in order to access middleman
* `chmod 400 <key>`
* Add ssh [config](.ssh/config)
* Access middleman in order to save fingerprint to `~/.ssh/known_hosts`
* Set up autossh in [crontab](crontab)
* Set up [telegram-bot](etc/profile.d/notify_login.sh) or other notification scheme
