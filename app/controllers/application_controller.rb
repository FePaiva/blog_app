class ApplicationController < ActionController::Base
  before_action :set_notifications, if: :current_user


  private

# checking the notifications where the recipient is the current_user, and grab the newest first 9 notifications.
  def set_notifications
    notifications = Notification.where(recipient: current_user).newest_first.limit(9)
    @unread = notifications.unread
    @read = notifications.read
  end
end
