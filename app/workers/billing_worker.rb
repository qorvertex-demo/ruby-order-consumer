# frozen_string_literal: true

require "shoryuken"

# Shoryuken is how a Ruby app actually consumes SQS: the worker DECLARES its
# queue rather than looping on receive_message.
class BillingWorker
  include Shoryuken::Worker

  shoryuken_options queue: "billing-jobs", auto_delete: true

  def perform(_sqs_msg, body)
    puts "billing #{body}"
  end
end
