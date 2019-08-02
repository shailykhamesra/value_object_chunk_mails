# frozen_string_literal: true

class ChangeColumnTypes < ActiveRecord::Migration[5.2]
  def change
    change_column :contacts, :name, :string
    change_column :contacts, :email, :string
    change_column :contacts, :subject, :string
    change_column :contacts, :message, :string
  end
end
