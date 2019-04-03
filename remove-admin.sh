#!/bin/bash -e
for i in {1..5}
do
   cf-mgmt-config update-org --config-dir config --org ORG_${i} \
     --enable-remove-users true \
     --manager-user-to-remove admin
   for s in {1..2}
   do
     cf-mgmt-config update-space --config-dir config --org ORG_${i} --space SPACE_${s} \
       --developer-user-to-remove admin \
       --manager-user-to-remove admin \
       --allow-ssh true \
       --enable-remove-users true
   done
done
