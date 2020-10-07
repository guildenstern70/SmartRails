# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

environ = ENV.fetch('RAILS_ENV')
Rails.logger.info('Environment > ' + environ)
Rails.logger.info('Serving: http://localhost:3000')
