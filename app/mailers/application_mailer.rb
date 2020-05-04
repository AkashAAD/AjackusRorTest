class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'

  def contact_us(contact)
    @contact = contact
    mail to: "info@ajackus.com", subject: "Contact Us"
  end

end
