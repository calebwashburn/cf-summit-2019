#!/bin/bash -e
cf api api.${SYSTEM_DOMAIN} --skip-ssl-validation
cf auth ${USER_ID} ${PASSWORD}
for u in {1..5}
do
  cf delete-user demo_${u} -f
  cf delete-user cf-mgmt-demo${u} -f
done

for i in {1..5}
do
   cf delete-org ORG_${i} -f
done
