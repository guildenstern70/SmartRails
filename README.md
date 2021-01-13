# SmartRails

[![MIT license](http://img.shields.io/badge/license-MIT-brightgreen.svg)](http://opensource.org/licenses/MIT)
[![Build Status](https://travis-ci.com/guildenstern70/SmartRails.svg?branch=master)](https://travis-ci.com/guildenstern70/SmartRails)



SmartRails is a template application written in Ruby (2.7.x) on Rails (6.0.x). 
It uses SQLite as database and Bootstrap as Rensponsive UI library.

### Initialize DB

Only if the database does not exits:

    rake db:create

Normally:

    rake db:migrate

Load initial data:

    rake db:seed

Rollback db

    rake db:rollback
    
### Run application

    rails server
    
### Troubleshooting

##### gem 'pg' is not installing 

See: https://michaelrigart.be/install-pg-ruby-gem-without-postgresql/