#!/usr/bin/env bash
if [ -d "/usr/lib/apache-netbeans/jdk" ] ; then
  if [ -z "$JAVA_HOME" ] ; then
    export JAVA_HOME="/usr/lib/apache-netbeans/jdk/"
  fi
  exec "/usr/lib/apache-netbeans/bin/netbeans" --jdkhome "/usr/lib/apache-netbeans/jdk" "$@"
else
  exec "/usr/lib/apache-netbeans/bin/netbeans" "$@"
fi
