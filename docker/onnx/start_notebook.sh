#!/bin/bash
name="onnx"
notebook=$(readlink -f ./../../notebooks/onnx.ipynb)
volume=$(readlink -f ./../../volume)
data=$(readlink -f ./../../data)
port_juypter=8889
other_port=7002

docker rm $name
bash ./build.sh
docker run -p $port_juypter:8888 -p $other_port:7001 -it  --name $name --mount type=bind,source=$notebook,target=/notebook/onnx.ipynb --mount type=bind,source=$volume,target=/notebook/volume --mount type=bind,source=$data,target=/notebook/data,readonly xyntek/$name

