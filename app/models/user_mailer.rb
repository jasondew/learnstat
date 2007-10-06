class UserMailer < ActionMailer::Base
  def signup_notification(user)
    setup_email(user)
    @recipients  = user.course.instructor.email
    @subject    += 'learnStat.new activation request'
    @body[:url]  = "http://learnstat.net/activate/#{user.activation_code}"
  end
  
  def activation(user)
    setup_email(user)
    @recipients  = user.email
    @subject    += 'Your account has been activated!'
    @body[:url]  = "http://learnstat.net/"
  end
  
  protected
    def setup_email(user)
      @from        = "ADMINEMAIL"
      @subject     = "[learnstat.net] "
      @sent_on     = Time.now
      @body[:user] = user
    end
end
