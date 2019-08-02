# frozen_string_literal: true

class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.text    :name
      t.text    :email
      t.text    :subject
      t.text    :message
      t.timestamps null: false
    end
  end
end
