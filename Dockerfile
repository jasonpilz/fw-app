ARG RUBY_VERSION=2.6.3

FROM ruby:$RUBY_VERSION

MAINTAINER Jason Pilz "jasonpilz@gmail.com"

ENV APP_DIR=/var/app

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        nodejs \
        libpq-dev \
        build-essential \
        postgresql-client \
    && rm -rf /var/lib/apt/lists/*

WORKDIR $APP_DIR

COPY Gemfile* $APP_DIR/
RUN gem install bundler \
    && bundle install

EXPOSE 3000

CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]
