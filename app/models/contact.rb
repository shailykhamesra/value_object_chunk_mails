# frozen_string_literal: true

class Contact < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  validates :email, presence: true
  after_create :transfer_data

  attr_accessor :message

  private

  def transfer_data
    msg = Message.new(message).fetch_message
    Email.new(self, msg).send_email
  end
end
