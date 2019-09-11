# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!



 ActionMailer::Base.smtp_settings = {
   domain: 'YOUR_DOMAIN.COM',
   address:        "smtp.sendgrid.net",
   port:           587,
   authentication: :plain,
   user_name:      'apikey',
   password:       ENV.fetch('SENDGRID_API_KEY')
 }
