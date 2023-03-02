FROM ruby:3.2.1-buster

ENV RAILS_ENV production
ENV RAILS_SERVE_STATIC_FILES true
ENV RAILS_LOG_TO_STDOUT true
ENV RAILS_PORT 8080
ENV APP_PATH /var/app

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update -yq \
    && apt-get install -yq \
        curl \
        xz-utils \
        sqlite3 \
        libsqlite3-dev \
        yarn

# Node.js 14
RUN curl https://nodejs.org/dist/v14.19.0/node-v14.19.0-linux-x64.tar.xz -O
RUN tar -xf node-v14.19.0-linux-x64.tar.xz
RUN ln -s /node-v14.19.0-linux-x64/bin/node /usr/local/bin/node
RUN ln -s /node-v14.19.0-linux-x64/bin/npm /usr/local/bin/npm
RUN ln -s /node-v14.19.0-linux-x64/bin/npx /usr/local/bin/npx

WORKDIR $APP_PATH
ADD . .

RUN yarn install
RUN gem install bundler && bundle install
RUN bundle exec rake db:environment:set db:prepare db:seed assets:precompile

EXPOSE $RAILS_PORT
ENTRYPOINT ["bundle", "exec"]
CMD ["rails", "server", "-b", "0.0.0.0", "-p", "8080", "-e", "production"]
