require 'test_helper'

class ListSenderTest < ActionMailer::TestCase
  test 'send_list' do
    current_user = User.first
    products = Product.where(user_id: current_user.id, active: true)
    email = a@b.com
    mail = ListSender.send_list(email, products, current_user)
    assert_equal "Shopping list from lister@lister.com", mail.subject
    assert_equal ["a@b.com"], mail.to
    assert_equal ["thesmartlistmailer@gmail.com"], mail.from
    assert_match 'Hello', mail.body.encoded
  end

end
