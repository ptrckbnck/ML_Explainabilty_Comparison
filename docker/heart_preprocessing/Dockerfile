FROM "ubuntu:bionic"

RUN apt-get update && apt-get install -y software-properties-common apt-utils python-pip

RUN pip install jupyter jupyterthemes pandas

# juypter dark theme
RUN jt -t chesterish

RUN mkdir /notebook

WORKDIR /notebook

EXPOSE 8888 7001

CMD jupyter notebook --ip 0.0.0.0 --allow-root --no-browser 


