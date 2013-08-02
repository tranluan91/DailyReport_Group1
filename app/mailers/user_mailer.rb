class UserMailer < ActionMailer::Base
  default from: :"anhltn217@gmail.com"

  def welcome_email(user)
    host = "http://localhost:3000/users"
    verify = Digest::MD5.hexdigest(user.email)
    @url = host  + "&"  + verify
    @password = user.password
    mail(to: user.email, subject: "Welcome to DailyReport Framgia")
  end

  def active_user(user)
    host = "http://localhost:3000/users"
    verify = Digest::MD5.hexdigest(user.email)
    @url = host  + "&"  + verify
    mail(to: 'anhltn217@gmail.com', subject: "Please active new user.")
  end
end
