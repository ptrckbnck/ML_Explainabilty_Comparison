#!/bin/bash
name="whatif_example"
notebook=$(readlink -f ./../../notebooks/whatif_example)
volume=$(readlink -f ./../../volume)
data=$(readlink -f ./../../data)


docker rm $name
bash ./build.sh
docker run -p 8888:8888 -p 7001:7001 -it  --name $name --mount type=bind,source=$notebook,target=/notebook/$name --mount type=bind,source=$volume,target=/notebook/volume --mount type=bind,source=$data,target=/notebook/data,readonly xyntek/$name

