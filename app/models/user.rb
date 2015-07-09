class User < ActiveRecord::Base

  def full_name
    "#{first_name} #{last_name}"
  end

  def send_invite
    UserMailer.invite_email(self).deliver_now
  end

end
