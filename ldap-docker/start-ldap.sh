#!/bin/bash -e
docker run -p 389:389 --name cf-mgmt-ldap --detach cf-mgmt-ldap 
