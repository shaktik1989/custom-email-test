class WelcomesController < ApplicationController
  def index
    @email_templates = EmailTemplate.all
  end
  
  def send_custom_email
    template = EmailTemplate.find(params[:template])
    if is_valid_request?
      email = UserMailer.custom_email(params[:email], template)
      email.delivery_method.settings.merge!(
        {:address => params[:email_server],
         :port => 587,
         :authentication => 'login', 
         :user_name => params[:user_name], 
         :password => params[:password], 
         :enable_starttls_auto => true})
      begin
        email.deliver_now 
        redirect_to root_path, notice: "Email is sent successfull"
      rescue Exception => e
        redirect_to root_path, notice: e.message
      end
    else
      redirect_to root_path, notice: "Please provide all required info."
    end  
  end

  private

  def is_valid_request?
    if params[:email].present? && params[:email_server].present? && params[:user_name].present? && params[:password].present?
      true
    else
      false
    end
  end
end
