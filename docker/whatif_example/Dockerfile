FROM "ubuntu:bionic"

RUN apt-get update && apt-get install -y software-properties-common apt-utils python3-dev python3-pip 

#RUN add-apt-repository -y ppa:deadsnakes/ppa

RUN python3 -m pip install --upgrade pip && pip3 install --upgrade jupyter jupyterthemes setuptools witwidget

RUN jt -t chesterish

RUN jupyter nbextension install --py --symlink --sys-prefix witwidget

RUN jupyter nbextension enable --py --sys-prefix witwidget

RUN mkdir /notebook

WORKDIR /notebook

CMD jupyter notebook --ip 0.0.0.0 --no-browser --allow-root


