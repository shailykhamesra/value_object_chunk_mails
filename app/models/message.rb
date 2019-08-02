# frozen_string_literal: true

class Message
  def initialize(message)
    @message = message
  end

  def fetch_message
    @message.scan(/\S.{1,100}(?!\S)/)
  end
end
