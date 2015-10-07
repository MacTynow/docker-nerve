FROM alpine

RUN apk --update add ruby ruby-dev build-base inotify-tools

RUN gem install nerve

WORKDIR /root
COPY . /root

CMD ["/bin/bash", "watch_config.sh"]