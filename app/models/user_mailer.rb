class UserMailer < ActionMailer::Base

  def signup_notification user
    setup_email user
    @recipients  = user.course.instructor.email
    @subject    += "Signup notification for #{user.name}"
  end
  
  def activation(user)
    setup_email(user)
    @recipients  = user.email
    @subject    += 'account activated'
    @body[:url]  = "http://learnstat.net/"
  end
  
  protected
    def setup_email(user)
      @from        = "support@learnstat.net"
      @subject     = "[learnstat.net] "
      @sent_on     = Time.now
      @body[:user] = user
    end
end
