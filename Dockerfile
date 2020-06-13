FROM ruby:2.7.1-alpine
RUN apk update \
  && apk upgrade \
  && apk add --no-cache --upgrade build-base postgresql-dev
RUN gem install bundler
