class UserMailer < ApplicationMailer
  default from: '"Teknobarn" <info@teknobarn.com>'

  def invite_email(user)
    @user = user
    @url  = "http://www.teknobarn.com/users/rsvp/#{@user.id}"
    mail(to: @user.email, subject: 'Welcome to Teknobarn')
  end

end
