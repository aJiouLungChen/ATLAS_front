FROM ruby:3.1.1-alpine3.15

RUN apk update -qq && apk add --no-cache build-base postgresql-client libpq-dev tzdata

WORKDIR /app

COPY Gemfile* ./

RUN bundle install
