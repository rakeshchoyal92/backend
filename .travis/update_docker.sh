#!/bin/bash
set -o errexit

main() {
  setup_dependencies

  echo "INFO:
  Done! Finished Updating docker.
  "
}

# Takes care of updating any dependencies that the
# machine needs.
setup_dependencies() {
  echo "INFO:
  Updating docker.
  "

  sudo apt update -y
  sudo apt install --only-upgrade docker-ce -y

  docker info
}

main