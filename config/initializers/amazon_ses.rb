ActionMailer::Base.add_delivery_method :ses, AWS::SES::Base,
  :server            => 'email.us-west-2.amazonaws.com',
  :access_key_id     => 'AKIAJDJPBTXPSJN65AIQ',
  :secret_access_key => '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'