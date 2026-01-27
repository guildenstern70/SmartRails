# SmartRails

SmartRails is a template application written in Ruby (4.x) on Rails (8.x).

It uses the following components and libraries:

- [SQLite 3](https://www.sqlite.org/)
- [Bulma CSS Framework](https://bulma.io/)
- [ESBuild](https://esbuild.github.io/)
- [Stimulus](https://stimulus.hotwired.dev/)

### Setup Ruby And Gems

Be sure to have 'ruby v.4.x' installed. It is recommended to use 'rbenv' Ruby Version Manager to switch
between Ruby versions.

Then run:

    bundle install

### Setup database

    bin/rails db:create
    bin/rails db:migrate
    bin/rails db:seed

### Development run

    bin/rails server

### Run unit tests

    bin/rails test

### Lint and style

    bundle exec rubocop
