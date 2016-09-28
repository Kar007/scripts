#!/bin/bash
 
if [  -f  "/root/scripts/deploy_update_data.sh" ];then
	rm -rf /root/scripts/deploy_update_data.sh
	cp /opt/deploy_update_data.sh /root/scripts/
else
	cp /opt/deploy_update_data.sh /root/scripts/
fi
sed -i "s/sudo//g" /root/scripts/deploy_update_data.sh
/bin/sh /root/scripts/deploy_update_data.sh &
echo "$(date) restart tomcat" >>/tmp/restart_tomcat.out
