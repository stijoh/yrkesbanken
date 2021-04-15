Rails.application.routes.draw do

  root to: 'pages#landing'
  get '/fag/:id', to: 'pages#fag'

  authenticate :user do
    mount Avo::Engine => '/avo'
  end

  devise_for :users, skip: %i[registrations]

end
