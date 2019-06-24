FROM nvidia/cuda:10.1-devel-ubuntu18.04

ENV CUDNN_VERSION 7.6.0.64
LABEL com.nvidia.cudnn.version="${CUDNN_VERSION}"

RUN apt-get update && \ 
    apt-get install -y --no-install-recommends \
      libcudnn7=$CUDNN_VERSION-1+cuda10.1 \
      libcudnn7-dev=$CUDNN_VERSION-1+cuda10.1 && \
    apt-mark hold libcudnn7 && \
    rm -rf /var/lib/apt/lists/*
  
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      build-essential \
      python3-dev \
      python3-pip \
      python3-setuptools && \
    rm -rf /var/lib/apt/lists/*
            
RUN pip3 install \
      wheel \
      scikit-image \
      opencv-python \
      torch \
      torchvision 