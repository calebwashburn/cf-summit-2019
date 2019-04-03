#!/bin/bash -e
ldapsearch -h 127.0.0.1 -p 389 -x -D "cn=admin,dc=pivotal,dc=org" -b "dc=pivotal,dc=org" -wpassword
