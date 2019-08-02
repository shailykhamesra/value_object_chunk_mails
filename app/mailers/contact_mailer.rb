# frozen_string_literal: true

class ContactMailer < ApplicationMailer
  def contact_email(contact, message)
    @contact = contact
    @message = message
    mail(from: ValueObject.credentials[:email_id], to: @contact.email, subject: @contact.subject)
  end
end
