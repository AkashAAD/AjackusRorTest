# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'

  def contact_us(contact)
    @contact = contact
    mail to: 'info@ajackus.com', subject: 'Contact Us', content_type: "multipart/alternative"
  end
end
