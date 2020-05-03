FROM ruby:latest

# Install dev tools and postgresql
RUN apt-get update -qq && apt-get install -y build-essential postgresql-client libpq-dev nodejs wait-for-it

# Install yarn (for Rails >= 6 only)
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update && apt-get install -y yarn
RUN yarn --version

RUN mkdir /myapp
WORKDIR /myapp

RUN gem install rails --pre

COPY . /myapp

CMD ["./run.sh"]