class UserMailer < ApplicationMailer
  default from: "mkumaror@gmail.com"
  
  def custom_email(user_email, email_templtate)
    @email = user_email
    @email_templtate = email_templtate
    mail(to: @email, subject: @email_templtate.subject)
  end

end
