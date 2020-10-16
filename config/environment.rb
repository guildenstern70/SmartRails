#
# SmartRails
# Ruby on Rails Project
# (C) Alessio Saltarin 2020
# MIT License
#

require_relative 'application'

def hello
  environ = ENV.fetch('RAILS_ENV')
rescue KeyError
  environ = 'DEV'
ensure
  Rails.logger.info('Environment > ' + environ)
  Rails.logger.info('Serving: http://localhost:3000')
end

# Initialize the Rails application.
Rails.application.initialize!
hello




