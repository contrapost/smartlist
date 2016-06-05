require 'test_helper'

class ListSenderTest < ActionMailer::TestCase
  test "send_list" do
    mail = ListSender.send_list
    assert_equal "Send list", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
