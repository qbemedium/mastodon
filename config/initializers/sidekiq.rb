require 'sidekiq/middleware/i18n'

host = ENV.fetch('REDIS_HOST') { 'localhost' }
port = ENV.fetch('REDIS_PORT') { 6379 }
password = ENV.fetch('REDIS_PASSWORD') { false }

Sidekiq.configure_server do |config|
  config.redis = { host: host, port: port, password: password}
end

Sidekiq.configure_client do |config|
  config.redis = { host: host, port: port, password: password }
end
