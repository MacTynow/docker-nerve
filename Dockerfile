FROM debian:sid

RUN \
  apt-get update && \
  apt-get install -y ruby ruby-dev build-essential libghc-zlib-dev sudo && \
  rm -rf /var/lib/apt/lists/*

RUN gem install nerve

CMD ["/bin/bash", "watch_config.sh"]