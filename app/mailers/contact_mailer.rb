class ContactMailer < ApplicationMailer
  def contact_email(contact)
    @contact = contact
    mail(to: 'niels.ayigbede@gmail.com', subject: 'Nouveau message de contact')
  end
end
