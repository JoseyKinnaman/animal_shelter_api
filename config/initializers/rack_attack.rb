class Rack::Attack
  Rack::Attack.cache.store = ActiveSupport::Cache::MemoryStore.new
  throttle('api/ip', limit: 5, period: 2.minutes) do |req|
    req.ip
  end
end