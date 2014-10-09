require 'test_helper'

class FeedbackNotifierTest < ActionMailer::TestCase
  test "new_feedback" do
    mail = FeedbackNotifier.new_feedback
    assert_equal "New feedback", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "reply_feedback" do
    mail = FeedbackNotifier.reply_feedback
    assert_equal "Reply feedback", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
