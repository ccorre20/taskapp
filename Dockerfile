FROM ruby:2.3.3

RUN apt-get update -qq && apt-get install -qq -y --no-install-recommends build-essential nodejs libpq-dev
ENV INSTALL_PATH /taskapp
RUN mkdir -p $INSTALL_PATH
WORKDIR $INSTALL_PATH

COPY Gemfile Gemfile.lock ./
RUN bundle install --binstubs
COPY . .
