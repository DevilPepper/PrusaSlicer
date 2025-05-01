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
  liblzma-dev \
  libwebkit2gtk-4.1-dev \
  locales \
  ninja-build \
  texinfo \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

RUN echo "en_US.UTF-8 UTF-8" > /etc/locale.gen \
 && locale-gen en_US.UTF-8 \
 && update-locale LANG=en_US.UTF-8

ENV LANG=en_US.UTF-8 \
    LC_ALL=en_US.UTF-8

WORKDIR /workspace
