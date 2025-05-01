FROM debian:12.10

RUN apt-get update \
 && apt-get install -y --no-install-recommends \
  autoconf \
  build-essential \
  ca-certificates \
  cmake \
  git \
  libdbus-1-dev \
  libglu1-mesa-dev \
  libgtk-3-dev \
  libwebkit2gtk-4.1-dev \
  ninja-build \
  texinfo \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

WORKDIR /workspace
