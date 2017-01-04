#!/bin/sh
curl --silent --user root:admin http://192.168.1.1/Status_Internet.live.asp | grep -o "wan_ipaddr::.*" | cut -d":" -f3 | cut -d"}" -f1
