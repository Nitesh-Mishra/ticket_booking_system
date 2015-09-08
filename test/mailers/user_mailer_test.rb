require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "receipt_send" do
    mail = UserMailer.receipt_send
    assert_equal "Receipt send", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
