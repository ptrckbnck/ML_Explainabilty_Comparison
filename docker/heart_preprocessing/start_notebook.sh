#!/bin/bash
name="heart_preprocessing"
notebook=$(readlink -f ./../../notebooks/data_preparation.ipynb)
volume=$(readlink -f ./../../volume)
data=$(readlink -f ./../../data)


docker rm $name
docker run -p 8888:8888 -p 7001:7001 -it  --name $name --mount type=bind,source=$notebook,target=/notebook/data_preparation.ipynb --mount type=bind,source=$volume,target=/notebook/volume --mount type=bind,source=$data,target=/notebook/data,readonly xyntek/$name

