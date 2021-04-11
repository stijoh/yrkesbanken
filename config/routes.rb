Rails.application.routes.draw do

    mount Avo::Engine => '/avo'
  devise_for :users
  get '/linus', to: 'pages#linus'

end
