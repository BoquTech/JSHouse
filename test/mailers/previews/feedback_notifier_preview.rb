# Preview all emails at http://localhost:3000/rails/mailers/feedback_notifier
class FeedbackNotifierPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/feedback_notifier/new_feedback
  def new_feedback
    FeedbackNotifier.new_feedback
  end

  # Preview this email at http://localhost:3000/rails/mailers/feedback_notifier/reply_feedback
  def reply_feedback
    FeedbackNotifier.reply_feedback
  end

end
