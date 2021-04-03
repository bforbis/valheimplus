#!/usr/bin/env sh

# Syncs config to the running valheimplus server
ssh $ZAC docker stop valheimplus
rsync valheim_plus.cfg $ZAC:/tank/docker/volumes/valheimplus_server/_data/BepInEx/config/
ssh $ZAC docker start valheimplus