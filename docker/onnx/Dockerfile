FROM "ubuntu:bionic"

RUN apt-get update && apt-get install -y software-properties-common apt-utils python3-dev python3-pip git protobuf-compiler libprotoc-dev cmake python-dev

RUN python3 -m pip install --upgrade pip && pip3 install jupyter jupyterthemes pandas sklearn tensorflow tensorflow-addons setuptools 

RUN git clone https://github.com/onnx/onnx.git && cd onnx && git submodule update --init --recursive && python3 setup.py install

RUN python3 -m pip install git+https://github.com/onnx/sklearn-onnx.git

RUN git clone https://github.com/onnx/onnx-tensorflow.git && cd ./onnx-tensorflow && pip3 install -e .

RUN python3 -m pip install --upgrade pip && pip3 install onnxruntime

# juypter dark theme
RUN jt -t chesterish

RUN mkdir /notebook

WORKDIR /notebook

EXPOSE 8888 7001

CMD jupyter notebook --ip 0.0.0.0 --allow-root --no-browser 


