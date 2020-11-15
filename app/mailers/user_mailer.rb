class UserMailer < ApplicationMailer
  default from: ENV['EMAIL_ADDRESS']
 
  def send_mail(user)
    @user = user
    @greeting = ''
    mail to: ENV['EMAIL_ADDRESS'], subject: 'ユーザーアカウント登録完了のお知らせ'
  end
end