class User < ActiveRecord::Base

  def full_name
    "#{first_name} #{last_name}"
  end

  def send_invite
    UserMailer.invite_email(self).deliver_later
    self.invite_sent = true
    self.save!
  end

  def self.send_invites
    users = User.where(:invite_sent => nil)
    users.each do |user|
      user.send_invite
    end
  end

end
