# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/account_activation
  def account_activation
  	user = User.first
  	user.activation_token = SecureRandom.urlsafe_base64
    UserMailer.account_activation(user)
  end

end
