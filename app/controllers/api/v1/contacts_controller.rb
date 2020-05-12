class Api::V1::ContactsController < ApplicationController
  skip_before_action :verify_authenticity_token
  include HomeHelper

  def contact
    if request.post?
      @contact = create_contact(contact_params)
      if @contact.errors.messages.blank?
        render json: { status: 200, messages: t("contact.save_message"), contact: @contact }
      else
        render json: { status: 401, messages: @contact.errors.full_messages.join(', ') }
      end
    end
  end

  private
  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :email, :phone_number, :message)
  end
end
