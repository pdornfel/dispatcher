class Notifier < ActionMailer::Base
  default from: "jboursiquot@gmail.com"
  default to: "jboursiquot@gmail.com"

  def new_notice(notice)
    @notice = notice
    mail(subject: @notice.title)
  end
end
