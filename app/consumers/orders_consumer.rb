# frozen_string_literal: true

class OrdersConsumer < Karafka::BaseConsumer
  def consume
    messages.each { |message| handle(message.payload) }
  end

  private

  def handle(payload)
    puts "handling order #{payload}"
  end
end
