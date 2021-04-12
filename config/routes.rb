Rails.application.routes.draw do

  authenticate :user do
    mount Avo::Engine => '/avo'
  end

  devise_for :users
  get '/linus', to: 'pages#linus'

end
