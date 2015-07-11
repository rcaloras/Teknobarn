ActionMailer::Base.add_delivery_method :ses, AWS::SES::Base,
  :server            => 'email.us-west-2.amazonaws.com',
  :access_key_id     => ENV['SES_USER'],
  :secret_access_key => ENV['SES_PASS']