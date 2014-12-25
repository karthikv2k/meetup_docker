#!/usr/bin/env bash
curl -s -L $CONFIG_FILE -o td-agent.conf.download
export DATE=$(date +"%Y-%m-%d")
sed s/\\*\\*random\\*\\*/$DATE-$RANDOM/ td-agent.conf.download > td-agent.conf
cat td-agent.conf
/usr/sbin/td-agent -c td-agent.conf