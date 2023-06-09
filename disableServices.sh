# Stop, disable, and remove postfix after installing turnkey core
systemctl stop postfix
systemctl disable postfix
apt purge postfix && apt autoremove -y

# check if port 53 is already being used by resolve
# netstat -lntup | grep ":53"


#disable resolv
systemctl stop systemd-resolved
systemctl disable systemd-resolved
apt purge resolvedconf && apt autoremove -y