#!/usr/bin/env sh

# Syncs config to the running valheim server
ssh $ZAC docker stop valheim
rsync valheim_plus.cfg $ZAC:/tank/docker/volumes/valheim_server/_data/BepInEx/config/
ssh $ZAC docker start valheim