#!/bin/bash -e
uaac target uaa.${SYSTEM_DOMAIN}
uaac token client get admin -s ${CLIENT_SECRET}
uaac users -a username -a origin -a externalid
