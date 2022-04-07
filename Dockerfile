# syntax=docker/dockerfile:1

FROM ruby:3.1.1

# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1

WORKDIR /app

COPY . .

RUN bundle install

CMD ["rails", "s", "-b", "0.0.0.0"]
