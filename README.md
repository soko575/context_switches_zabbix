# context_switches_zabbix
Bash script for process's or service's context switches using the Zabbix(6.0.4)

INSTALLATION AND CONFIGURATION

1.Add Bash scripts on host in zabbix-agent direction. 
2.Add USERPARAMETER in zabbix-agent.conf file

    UserParameter=context.switching[*],/etc/zabbix/scripts/context_swch.sh "$1"

3.Restart zabbix-agent service.
4.Link Template to host and change Host-Macroses to your required service names.

