Rails.application.routes.draw do
  get 'webhook', :to => 'base#verify'
  post 'webhook', :to => 'reply#reply'
end
