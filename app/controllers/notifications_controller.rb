class NotificationsController < ApplicationController
  before_action :authenticate_user!

  def create
  end

  def index
    @notifications = Notification.where(recipient: current_user).order('created_at DESC').unread
  end

  def mark_as_read
    @notifications = Notification.where(recipient: current_user).unread
    @notifications.update_all(read_at: Time.zone.now)
    render json: {success: true}
  end
end
