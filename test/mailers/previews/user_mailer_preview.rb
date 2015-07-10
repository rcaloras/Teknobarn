# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview
  def invite
    User.create(:first_name => 'Andrew', :last_name => 'Weist', :email => 'andrew.weist@gmail.com')
    UserMailer.invite_email(User.first)
  end

end
