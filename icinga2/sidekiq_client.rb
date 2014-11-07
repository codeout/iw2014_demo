require 'sidekiq'

Sidekiq.configure_client do |config|
  config.redis = {namespace: 'icinga', size: 1}
end

class Icinga
  include Sidekiq::Worker
end

Icinga.perform_async(:reload)
