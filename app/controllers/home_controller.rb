class HomeController < ApplicationController
  def contact
    if request.post?
      @contact = Contact.new(contact_params)
      @contact.save
      ApplicationMailer.contact_us(@contact).deliver_now
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
