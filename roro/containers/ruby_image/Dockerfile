ARG RUBY_IMAGE=ruby:2.7-alpine
FROM $RUBY_IMAGE

RUN apk add --no-cache --update build-base linux-headers git

ENV APP_HOME /usr/src/app/

RUN mkdir ${APP_HOME}


WORKDIR ${APP_HOME}


COPY . ${APP_HOME}
RUN gem update bundler
RUN bundle 