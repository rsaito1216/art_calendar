class UserMailer < ApplicationMailer
  default from: ENV['EMAIL_ADDRESS']
 
  def send_mail(user)
    @user = user
    @url = "https://art-calendar.herokuapp.com/"
    @greeting = ''
    mail to: @user.email, subject: 'ユーザーアカウント登録完了のお知らせ'
  end
end
