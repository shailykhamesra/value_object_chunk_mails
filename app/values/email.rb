# frozen_string_literal: true

class Email
  def initialize(contact, messages)
    @contact = contact
    @messages = messages
  end

  def send_email
    @messages.map { |message| ContactMailer.contact_email(@contact, message).deliver }
  end
end
