class Facebook

  SEND_ENDPOINT =
  'https://graph.facebook.com/v2.6/me/messages' \
  "?access_token=#{Rails.application.secrets.page_access_token}"

  def initialize
    @headers = {'Content-Type' => 'application/json'}
  end

  def send_message user_id, msg
    payload = {:recipient => {:id => user_id}, :message => {:text => msg}}
    RestClient.post SEND_ENDPOINT, payload, @headers
  end

end
