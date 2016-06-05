class ListSender < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.list_sender.send_list.subject
  #
  def send_list(email, active_products, current_user)
    @greeting = 'Hello'
    @active_list = active_products
    @current_user_email = current_user.email
    mail to: email, subject: "Shopping list from #{@current_user_email}"
  end

end
