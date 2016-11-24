class ReplyController < ApplicationController

  def reply
    messaging = params[:entry][0][:messaging][0]
    user_id = messaging[:sender][:id] if messaging
    message = messaging[:message][:text] if messaging

    WitWrapper.new.run_actions user_id, message

    head :ok
  end

end
