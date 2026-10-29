# frozen_string_literal: true

require "redis"

class InventoryListener
  def initialize
    @redis = Redis.new(url: ENV.fetch("REDIS_URL", "redis://localhost:6379"))
  end

  def listen
    @redis.subscribe("inventory-sync") do |on|
      on.message { |_channel, sku| refresh(sku) }
    end
  end

  private

  def refresh(sku)
    puts "refreshing #{sku}"
  end
end
