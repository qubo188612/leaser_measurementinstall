#！/bin/bash
mkdir DATA
mkdir SAVE
xhost +
docker run --rm --network=host -itd --name leaser \
--mount type=bind,source=./SAVE,destination=/workspace/leaser/SAVE \
--mount type=bind,source=./DATA,destination=/workspace/leaser/DATA \
--privileged -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=:0 qubo188612/ubuntu20.04:leaser

