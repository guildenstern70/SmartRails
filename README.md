# SmartRails

[![MIT license](http://img.shields.io/badge/license-MIT-brightgreen.svg)](http://opensource.org/licenses/MIT)
[![Build Status](https://travis-ci.com/guildenstern70/SmartRails.svg?branch=master)](https://travis-ci.com/guildenstern70/SmartRails)


SmartRails is a template application written in Ruby (3.2.x) on Rails (7.0.x).
It uses the following components and libraries:

- [SQLite 3](https://www.sqlite.org/)
- [ESBuild](https://esbuild.github.io/)
- [Stimulus](https://stimulus.hotwired.dev/)

### Setup Ruby And Gems

Be sure to have 'ruby v.3.2.x' installed. It is recommended to use 'rbenv' Ruby Version Manager to switch
between Ruby versions.

Then run:

    bundle install

### Install JavaScript dependencies

    yarn install


### Setup database

    bin/rails db:create
    bin/rails db:migrate
    bin/rails db:seed

### Development run

    bin/dev


### Docker

Build & Run docker image

    docker build --platform linux/amd64 -t smartrails:2.0 .
    docker run -p 8080:8080 smartrails:2.0


### Data model and database

Ruby on Rails DOES NOT automatically create models from migrations. Instead, you create the model with:

    bin/rails generate migration [migration_name] [columns]

and the model class with its migration will be created. The 'model' class in Ruby has the same attributes 
found in the correspondent table.

For instance, model class Item:

    class Item < ApplicationRecord
    end

is only apparently empty: it takes the fields found in "Item" table on database. It also works as a "items"
repository.

To create the database if it does not exits:

    bin/rails db:create  

Then apply migrations with:

    bin/rails db:migrate  

Load initial data:

    bin/rails db:seed

Rollback db

    bin/rails db:rollback 

To add a migration/model:

    bin/rails generate migration [migration_name] [columns]
    

### Run application

During development:

    bin/dev

else:

    bin/rails server

### Run unit tests

    bin/rails test


