# frozen_string_literal: true

class Contact < ActiveRecord::Base
  validates :name, presence: true
  validates :email, presence: true
  validates :subject, presence: true
  validates :message, presence: true
  after_create :transfer_data

  private

  def transfer_data
    msg = Message.new(message).generate_message_chunks
    Email.new(self, msg).send_email
  end
end
