class MessageMailer < ActionMailer::Base

  def notify(member, message)
    @message = message
    @member = member

    mail(mail_args(member, "You have a new message")) do |format|
      format.html
    end
  end

  helper do
    def full_url_for path
      "#{@host}#{path}"
    end
  end

  private
  def mail_args(member, subject)
    { :to => member.email,
      :subject => subject }
  end
end
