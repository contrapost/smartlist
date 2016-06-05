# Preview all emails at http://localhost:3000/rails/mailers/list_sender
class ListSenderPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/list_sender/send_list
  def send_list
    ListSender.send_list
  end

end
