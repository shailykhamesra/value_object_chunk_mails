# frozen_string_literal: true

class Message
  def initialize(message)
    @message = message
  end

  def generate_message_chunks
    @message.scan(/\S.{1,100}(?!\S)/)
  end
end
