FROM alpine

RUN apk --update add ruby ruby-dev build-base

RUN gem install nerve

WORKDIR /root
COPY . /root

CMD ["/bin/bash", "watch_config.sh"]