FROM ruby:2.3.1-alpine

RUN apk add --update --virtual \
    ruby-dev \
    build-essential \
    postgresql-client \
    build-base \
    libxml2-dev \
    nodejs \
    libffi-dev \
    readline \
    build-base \
    postgresql-dev \
    libc-dev \
    linux-headers \
    readline-dev \
    file \
    imagemagick \
    git \
    tzdata \
    && rm -rf /var/cache/apk/*

WORKDIR /app
COPY . /app/

ENV BUNDLE_PATH /gems
RUN bundle install
RUN bundle exec rubocop

ENTRYPOINT ["bin/rails"]
CMD ["s", "-b", "0.0.0.0"]

EXPOSE 3000
