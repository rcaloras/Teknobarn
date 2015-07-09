class UserMailer < ApplicationMailer
  default from: 'noreply@teknobarn.com'

  def invite_email(user)
    @user = user
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Welcome to Teknobarn')
  end

end
