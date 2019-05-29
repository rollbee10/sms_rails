class SmsReportsController < BaseController
  require 'csv'

  def index
    @messages = Message.where(:user_id => current_user.id, message_send_status: 1).order('id DESC')
  end

 

end
