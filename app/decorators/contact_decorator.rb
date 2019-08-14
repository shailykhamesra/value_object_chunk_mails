# frozen_string_literal: true

class ContactDecorator < Draper::Decorator
  delegate_all

  def name_exists
    name || 'System'
  end
end
