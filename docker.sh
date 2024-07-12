#!/bin/bash

if [ "$1" == "" ]; then
  echo "Geekplus Docker Image starter
  usage: $0 [container_name]
"
  exit 0
fi

CONTAINER_NAME=$1

container_id=$(docker ps --filter "name=${CONTAINER_NAME}" -q -a)
if [ ! -z "${container_id}" ]; then
  echo "${CONTAINER_NAME} exists with container id ${container_id} . Please remove it before starting."
  exit 0
fi

nvidia_smi_path=`which nvidia-smi`

GPU_OPTIONS="--gpus all"
if [ -z "${nvidia_smi_path}" ]; then
  GPU_OPTIONS=""
fi

docker run ${GPU_OPTIONS} -d --network host --privileged --name ${CONTAINER_NAME} \
  --env="DISPLAY" \
  --env="QT_X11_NO_MITSHM=1" \
  --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
  -v $HOME:/home/chery \
  -v $HOME/.Xauthority:/root/.Xauthority \
  -it  osrf/ros:noetic-desktop-full /bin/bash

xhost +local:`docker inspect --format='{{ .Config.Hostname }}' ${CONTAINER_NAME}`

docker attach ${CONTAINER_NAME}
