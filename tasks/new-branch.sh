#!/bin/bash

cd source-code || echo "missing input resource: source-code"

CURRENT_POM_VERSION=`mvn org.apache.maven.plugins:maven-help-plugin:2.1.1:evaluate -Dexpression=project.version | grep -v '\['`
echo "CURRENT_POM_VERSION $CURRENT_POM_VERSION"

MAJOR_MINOR=`$CURRENT_POM_VERSION | tr -d '\-SNAPSHOT' | awk -F '.' '{print $1 "." $2}'`
echo "MAJOR_MINOR $MAJOR_MINOR"
