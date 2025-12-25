#!/bin/bash
export CATALINA_OPTS="-Dserver.port=$PORT"
catalina.sh run
