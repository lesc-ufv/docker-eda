#!/usr/bin/env sh

######################################################################
# @author      : Ruan E. Formigoni (ruanformigoni@gmail.com)
# @file        : eda
# @created     : sexta jul 03, 2020 09:57:27 -03
#
# @description : Choose docker services for EDA tools
######################################################################

#
# Name of the shared directory
#
SHARED="shared"

#
# Exit on error code
#
set -e

#
# Check if docker is installed
#
if [ ! $(which docker) ]; then
  echo "\033[31;1m * \033[mDocker is not installed!"
  exit 1
fi

#
# Create shared dir if not exists
#
if [ ! -d ${SHARED} ]; then
  mkdir ${SHARED}
fi

#
# Present choices to the user
#
case "${1}" in
  abc)
    docker run \
      -it \
      --net=host \
      --env="DISPLAY" \
      --rm \
      -v $(pwd)/${SHARED}:/home/eda/${SHARED} formigoni/abc
    ;;
  fiction)
    docker run \
      --net=host \
      --env="DISPLAY" \
      -it \
      --rm \
      -v $(pwd)/${SHARED}:/home/eda/${SHARED} formigoni/fiction
    ;;
  cirkit)
    docker run \
      -it \
      --net=host \
      --env="DISPLAY" \
      --rm \
      -v $(pwd)/${SHARED}:/home/eda/${SHARED} formigoni/cirkit
    ;;
  nmlsim-1)
    docker run \
      --net=host \
      --env="DISPLAY" \
      --rm \
      -v $(pwd)/${SHARED}:/home/eda/${SHARED} formigoni/nmlsim-1
    ;;
  nmlsim-2)
    docker run \
      --net=host \
      --env="DISPLAY" \
      --rm \
      -v $(pwd)/${SHARED}:/home/eda/${SHARED} formigoni/nmlsim-2
    ;;
  topolinano)
    docker run \
      --net=host \
      --env="DISPLAY" \
      --rm \
      -v $(pwd)/${SHARED}:/home/eda/${SHARED} formigoni/topolinano
    ;;
  *)
    echo "Usage: \033[32;1m./eda.sh\033[m tool \n\
List of tools: \n\
-- nmlsim-1 \n\
-- nmlsim-2 \n\
-- topolinano"
esac
