class UserMailer < ApplicationMailer
  def contact_email(contact)
@contact = contact
mail(to: Rails.application.secrets.owner_email, from: @contact.email, :subject => "Website")
end
end
