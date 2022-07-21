FROM ruby:3.0.0

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

RUN mkdir /server_v1

WORKDIR /server_v1

COPY Gemfile Gemfile

COPY Gemfile.lock Gemfile.lock

RUN gem install bundler

RUN bundle install

COPY . /server_v1
