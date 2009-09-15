class Notifier < ActionMailer::Base
  
  def contact_admin(contact)
    subject "New contact us message"
    from "#{APP_CONFIG[:app_name]} <#{APP_CONFIG[:app_email]}>"
    recipients account.users.first.email
    sent_on Time.now
    body :account => account
  end
  
  def contact_user(contact)
    subject "We've received your message"
    from "#{APP_CONFIG[:app_name]} <#{APP_CONFIG[:app_email]}>"
    recipients account.users.first.email
    sent_on Time.now
    body :account => account
  end

end
