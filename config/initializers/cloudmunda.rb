Cloudmunda.configure do |config|
  config.env = ENV['APP_ENV'] || ENV['RAILS_ENV'] || ENV['RACK_ENV'] || 'development'
  config.logger = Logger.new($stdout)
  config.timeout = 30
  config.client_id = ENV['ZEEBE_CLIENT_ID']
  config.client_secret = ENV['ZEEBE_CLIENT_SECRET']
  config.zeebe_url = ENV['ZEEBE_URL']
  config.auth_url = ENV['ZEEBE_AUTHORIZATION_SERVER_URL']
  config.audience = ENV['ZEEBE_AUDIENCE']
  config.graphql_url = ENV['GRAPHQL_URL']
end