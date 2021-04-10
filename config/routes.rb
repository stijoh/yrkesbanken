Rails.application.routes.draw do

  devise_for :users
  get '/linus', to: 'pages#linus'

end
