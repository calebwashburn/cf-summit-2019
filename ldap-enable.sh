#!/bin/bash -e
for i in {1..5}
do
   for s in {1..2}
   do
     cf-mgmt-config update-space --config-dir config --org ORG_${i} --space SPACE_${s} \
        --developer-ldap-group space_developers \
        --allow-ssh true \
        --enable-remove-users true
     for u in {1..5}
     do
      cf-mgmt-config update-space --config-dir config --org ORG_${i} --space SPACE_${s} \
         --developer-user-to-remove demo_${u} \
         --allow-ssh true \
         --enable-remove-users true
     done
   done
done
