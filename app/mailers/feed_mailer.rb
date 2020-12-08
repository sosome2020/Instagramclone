class FeedMailer < ApplicationMailer
  def feed_mail(feed)
    @feed = feed
    mail to: @feed.user.email, subject: "Inquiry confirmation email"
  end
end
