class ContactForm < MailForm::Base
  attributes :name,     :validate => false
  attributes :email,    :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attributes :message
  attributes :nickname, :captcha => true
  attributes :recipient
  attributes :subject
  attributes :phone
  append :remote_ip, :user_agent

  def headers
    {
      :subject => "#{subject}",
      :to => %(<#{recipient}>),
      :from => %("#{name}" <#{email}>)
    }
  end

end
