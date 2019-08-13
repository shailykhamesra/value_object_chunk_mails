# frozen_string_literal: true

class ContactSerializer < ActiveModel::Serializer
  attributes :id, :name, :email
end
