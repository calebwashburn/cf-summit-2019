#!/bin/bash -e
cf api api.${SYSTEM_DOMAIN} --skip-ssl-validation
cf auth ${USER_ID} ${PASSWORD}
for u in {1..5}
do
  cf create-user demo_${u} ${PASSWORD}
done

for i in {1..5}
do
   cf create-org ORG_${i}
   for s in {1..2}
   do
     #cf target -o ORG_${i}
     cf create-space SPACE_${s} -o ORG_${i}
     for u in {1..5}
     do
       cf set-space-role demo_${u} ORG_${i} SPACE_${s} SpaceDeveloper
     done
   done
done
