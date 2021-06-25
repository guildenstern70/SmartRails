FROM ruby:2-buster

ENV RAILS_ENV production
ENV RAILS_SERVE_STATIC_FILES true
ENV RAILS_LOG_TO_STDOUT true
ENV RAILS_PORT 3000
ENV APP_PATH /var/app

RUN apt-get update -qq && apt-get install -y npm nodejs sqlite3 libsqlite3-dev
RUN apt remove cmdtest yarn
RUN npm install -g yarn

WORKDIR $APP_PATH
ADD . .

RUN yarn install
RUN gem install bundler && bundle install
RUN bundle exec rake db:environment:set db:prepare assets:precompile

EXPOSE 8080
ENTRYPOINT ["bundle", "exec"]
CMD ["rails", "server", "-b", "0.0.0.0", "-p", "8080", "-e", "production"]