Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post 'send_custom_email'  => 'welcomes#send_custom_email' , as: :send_custom_email
  root 'welcomes#index'
end
