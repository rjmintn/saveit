ActionMailer::Base.smtp_settings = {
  port: 587,
  address: 'smtp.mailgun.org',
  user_name: ENV['MAILGUN_SMTP_LOGIN'],
  password: ENV['MAILGUN_SMTP_PASSWORD'],
  domain: 'saveit-rjm@heroku.com',
  authentication: :plain,
  content_type: 'text/html'
}

ActionMailer::Base.delivery_method = :smtp_settings
ActionMailer::Base.raise_delivery_errors = true
