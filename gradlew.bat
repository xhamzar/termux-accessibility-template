#!/usr/bin/env sh

##############################################################################
##
##  Gradle start up script for UN*X
##
##############################################################################

# Attempt to set APP_HOME
APP_NAME="Gradle"
APP_BASE_NAME=`basename "$0"`

# Resolve symlinks
PRG="$0"
while [ -h "$PRG" ] ; do
  ls=`ls -ld "$PRG"`
  link=`expr "$ls" : '.*-> .*$'`
  if expr "$link" : '/.*' > /dev/null; then
    PRG="$link"
  else
    PRG=`dirname "$PRG"`/"$link"
  fi
done

SAVED="`pwd`"
cd "`dirname \"$PRG\"`/" >/dev/null
APP_HOME="`pwd -P`"
cd "$SAVED" >/dev/null

# Use default Gradle user home directory if not set
GRADLE_USER_HOME="${GRADLE_USER_HOME:-$HOME/.gradle}"

# Add default JVM options here
DEFAULT_JVM_OPTS=""

# Look for JAVA_HOME
if [ -z "$JAVA_HOME" ] ; then
  JAVA_EXE="java"
else
  JAVA_EXE="$JAVA_HOME/bin/java"
fi

# Escape application args
quote() {
  printf "%s" "$1" | sed 's/"/\\"/g; s/.*/"&"/'
}

APP_ARGS=""
for ARG in "$@"
do
  APP_ARGS="$APP_ARGS $(quote "$ARG")"
done

CLASSPATH="$APP_HOME/gradle/wrapper/gradle-wrapper.jar"

exec "$JAVA_EXE" $DEFAULT_JVM_OPTS -classpath "$CLASSPATH" org.gradle.wrapper.GradleWrapperMain $APP_ARGS