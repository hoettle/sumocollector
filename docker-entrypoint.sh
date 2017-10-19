#!/bin/bash

set -euo pipefail

export SUMO_HOME="/sumocollector"
LATEST_VERSION=$(grep "wrapper.java.classpath.1" ${SUMO_HOME}/config/wrapper.conf | cut -d"/" -f 2)

# check for the expected command
if [ "$1" = 'start' ]; then

  # MUST use "exec" to get rid of bash process and let tini directly manages the java process
  exec /usr/bin/java \
    -server -verbose:gc -Xmx128m -Xms32m \
    -XX:+UseParallelGC -XX:+AggressiveOpts -XX:+UseFastAccessorMethods -XX:+DisableExplicitGC -XX:+HeapDumpOnOutOfMemoryError \
    -Djava.library.path="${SUMO_HOME}/${LATEST_VERSION}/bin/native/lib" \
    -cp "${SUMO_HOME}/${LATEST_VERSION}/lib/*" \
    com.sumologic.scala.collector.Collector
fi

# else default to run whatever the user wanted like "bash"
exec "$@"
