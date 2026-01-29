# SmartRails

SmartRails is a template application written in Ruby (4.x) on Rails (8.x).

It uses the following components and libraries:

- [SQLite 3](https://www.sqlite.org/)
- [Bulma CSS Framework](https://bulma.io/)
- [ESBuild](https://esbuild.github.io/)
- [Stimulus](https://stimulus.hotwired.dev/)


## Getting Started

### Setup Ruby And Gems

Be sure to have 'ruby v.4.x' installed. It is recommended to use 'mise' as Ruby Version Manager to switch
between Ruby versions.

Then run:

    bundle install

### Setup database

    ./bin/rails db:create
    ./bin/rails db:migrate
    ./bin/rails db:seed

### Development run

    ./bin/dev

### Run unit tests

    bin/rails test

### Lint and style

    bundle exec rubocop

Fix issues with:

    bundle exec rubocop -A

## Build container image

    docker build -t smart_rails .

Run with:

    docker run -d -p 80:80 -e RAILS_MASTER_KEY=<value from config/master.key> --name smart_rails smart_rails

Now, open your browser at `http://localhost`.

