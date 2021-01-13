#
# SmartRails
# Ruby on Rails Project
# (C) Alessio Saltarin 2021
# MIT License
#

require_relative 'application'

def hello
  environ = ENV.fetch('RAILS_ENV')
rescue KeyError
  environ = 'DEV'
ensure
  Rails.logger.info('Environment > ' + environ)
end

# Initialize the Rails application.
Rails.application.initialize!
hello




