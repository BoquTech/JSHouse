class FeedbackNotifier < ActionMailer::Base
  default from: "783814127@qq.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.feedback_notifier.new_feedback.subject
  #
  def new_feedback(feedback)
    @feedback = feedback

    mail(to: "qisc@jsfund.cn",subject: '[嘉实海外房产] 新留言提醒')
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.feedback_notifier.reply_feedback.subject
  #
  def reply_feedback(feedback)
    @feedback = feedback
    mail(to: feedback.email, subject: '[嘉实海外房产] 留言回复')
  end
end
