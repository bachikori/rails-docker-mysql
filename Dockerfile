FROM ruby:3.2
RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev  && \
    curl -fsSL https://deb.nodesource.com/setup_19.x | bash - && \
    apt-get install -y nodejs && \
    npm install --global yarn
WORKDIR /rails-docker-mysql
COPY Gemfile Gemfile.lock /rails-docker-mysql/
RUN bundle install
RUN rm -f tmp/pids/server.pid
CMD ["rails", "s", "-b", "0.0.0.0"]
