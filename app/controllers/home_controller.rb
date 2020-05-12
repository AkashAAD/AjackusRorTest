# frozen_string_literal: true

class HomeController < ApplicationController
  include HomeHelper

  def contact
    if request.post?
      @contact = create_contact(contact_params)
      respond_to do |format|
        format.js
      end
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :email, :phone_number, :message)
  end
end
