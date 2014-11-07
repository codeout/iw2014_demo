require 'sidekiq'

Sidekiq.configure_server do |config|
  config.redis = {url: 'http://server.example.com:6379', namespace: 'icinga'}
end

class Icinga
  include Sidekiq::Worker

  def perform(command)
    case command
    when 'reload'
      # 設定作成 + リロード処理
    end
  end
end
