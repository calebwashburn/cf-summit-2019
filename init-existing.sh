#!/bin/bash
mkdir -p config
cf-mgmt export-config --config-dir config
cat << EOF > config/ldap.yml
enabled: true
ldapHost: 127.0.0.1
ldapPort: 389
use_tls: false
bindDN: cn=admin,dc=pivotal,dc=org
userSearchBase: ou=users,dc=pivotal,dc=org
userNameAttribute: uid
userMailAttribute: mail
userObjectClass: ""
groupSearchBase: ou=groups,dc=pivotal,dc=org
groupAttribute: member
origin: ldap
insecure_skip_verify: true
ca_cert: ""
EOF
