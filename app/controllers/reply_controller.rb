class ReplyController < ApplicationController

  def reply
    messaging = params[:entry][0][:messaging][0]
    user_id = messaging[:sender][:id] if messaging

    send_message user_id, 'Hello World'

    head :ok
  end



  private

  def send_message user_id, msg
    url =
      'https://graph.facebook.com/v2.6/me/messages' \
      "?access_token=#{Rails.application.secrets.page_access_token}"
    payload = {:recipient => {:id => user_id}, :message => {:text => msg}}
    headers = {'Content-Type' => 'application/json'}

    RestClient.post url, payload, headers
  end

end
