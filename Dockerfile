FROM python:3.6
MAINTAINER Yohei Kikuta <diracdiego@gmail.com>

RUN apt-get update

RUN pip install --upgrade pip

RUN pip install \
    jupyter \
    http://download.pytorch.org/whl/cpu/torch-0.3.1-cp36-cp36m-linux_x86_64.whl \
    numpy \
    matplotlib \
    spacy \
    torchtext \
    seaborn

WORKDIR /work

ENTRYPOINT ["/bin/bash"]

