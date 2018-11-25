# namedCsfDeny
Create BIND9 acl blacklist from csf deny files

# Install
  vim /etc/named.conf
  	[...]
  	include "/etc/named/named.blackhats"
  	[...]
  systemctl reload named
