# frozen_string_literal: true

class ContactsController < ApplicationController
  def create
    @contact = Contact.new(contact_params)
    @contact.save!
    render json: { contact: @contact }, status: :ok
  rescue StandardError => e
    render json: { error: e.message }, status: :unprocessable_entity
  end

  def show
    render json: Contact.find(params[:id]), status: :ok
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :subject, :message)
  end
end
