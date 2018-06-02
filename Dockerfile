FROM ubuntu:latest
RUN apt-get update
RUN apt-get -y install \
  git curl vim unzip tar \
  build-essential zlib1g-dev libboost-all-dev libssl-dev cmake
RUN cd tmp \
  && git clone https://github.com/Microsoft/cpprestsdk.git \
  && cd cpprestsdk/Release \
  && mkdir build.debug \
  && cd build.debug \
  && cmake .. -DCMAKE_BUILD_TYPE=Debug \
  && make \
  && make install
CMD ["/bin/bash"]
