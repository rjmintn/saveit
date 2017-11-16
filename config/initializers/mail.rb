ActionMailer::Base.smtp_settings = {
  port: ENV['MAILGUN_SMTP_PORT'],
  address: ENV['MAILGUN_SMTP_SERVER'],
  user_name: ENV['MAILGUN_SMTP_LOGIN'],
  password: ENV['MAILGUN_SMTP_PASSWORD'],
  domain: ENV['MAILGUN_DOMAIN'],
  authentication: :plain,
  content_type: 'text/html'
}

ActionMailer::Base.delivery_method = :smtp_settings
ActionMailer::Base.raise_delivery_errors = true

class DevelopmentMailInterceptor
  def self.delivering_email(message)
    message.to =  'testemail@saveit-rjm.herokuapp.com'
    message.cc = nil
    message.bcc = nil
  end
end

if Rails.env.development?
  ActionMailer::Base.register_interceptor(DevelopmentMailInterceptor)
end
