module HomeHelper

  def create_contact(contact_params)
    contact = Contact.new(contact_params)
    ApplicationMailer.contact_us(contact).deliver_now if contact.save
    return contact
  end
end
