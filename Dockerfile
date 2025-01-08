FROM ruby:3.2.6-bullseye

ENV RUBYOPT="-KU -E utf-8:utf-8"
EXPOSE 4000
RUN gem install bundler

COPY Gemfile* /tmp/
RUN cd /tmp && bundle
WORKDIR /app
VOLUME /app

