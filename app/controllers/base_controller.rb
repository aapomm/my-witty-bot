class BaseController < ApplicationController

  def verify
    if params['hub.verify_token'] == Rails.application.secrets.verify_token
      render :json => params['hub.challenge']
    else
      render :json => 'Invalid verify token.'
    end
  end

end
