# frozen_string_literal: true

require "karafka"

# karafka's routing DSL is how a Ruby Kafka app declares what it READS. The
# topic name is the only thing shared with whoever produces to it.
class KarafkaApp < Karafka::App
  routes.draw do
    topic :orders do
      consumer OrdersConsumer
    end
  end
end
