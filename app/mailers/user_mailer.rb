class UserMailer < ApplicationMailer
  
  # Callback to smtp config
#   after_filter :set_smtp
 
  def welcome_email(user)
    @user = user
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
  
  
end
