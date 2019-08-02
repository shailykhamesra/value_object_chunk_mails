# frozen_string_literal: true

class ContactsController < ApplicationController
  def create
    @contact = Contact.new(contact_params)
    render json: { contact: @contact }, status: :ok && return if @contact.save
    render json: { error: @contact.errors.full_messages.first }, status: :unprocessable_entity
  rescue StandardError => e
    render json: { error: e.message }, status: :unprocessable_entity
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :subject, :message)
  end
end
