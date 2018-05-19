class WelcomesController < ApplicationController
  def index
    @email_templates = EmailTemplate.all
  end
  
  def send_custom_email
    template = EmailTemplate.find(params[:template])
    email = UserMailer.custom_email(params[:email], template)

    email.delivery_method.settings.merge!(
      {:address => params[:email_server],
       :port => 587,
       :authentication => 'login', 
       :user_name => params[:user_name], 
       :password => params[:password], 
       :enable_starttls_auto => true})
    
    email.deliver_now 
    
    redirect_to root_path
  end
end
