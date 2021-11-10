class ProductMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.product_mailer.welcome_email.subject
  #
  def welcome_email
    mail(to: email, subject: 'Welcome to My Awesome Site')
  end
end
