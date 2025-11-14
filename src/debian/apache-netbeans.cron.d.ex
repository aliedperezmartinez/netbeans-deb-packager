#
# Regular cron jobs for the apache-netbeans package.
#
0 4	* * *	root	[ -x /usr/bin/apache-netbeans_maintenance ] && /usr/bin/apache-netbeans_maintenance
