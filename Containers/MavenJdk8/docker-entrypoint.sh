#!/bin/sh
set -e

BASE=/src

CMD=$1

echo "Current workdir: $(pwd)"
echo "Command: $CMD"

# Build function
runBuild() {
   cd $BASE	
   echo "Starting build..."
   mvn clean package
   #exec "$@"
   echo "Done!"
   ls -lah $BASE/target
}

showHelp() {
   echo "Comando inválido!"
}

# Evaluate available options
case "$CMD" in
build)
   runBuild
;;
*)
   showHelp
;;
esac

