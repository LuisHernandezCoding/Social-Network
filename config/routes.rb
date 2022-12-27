Rails.application.routes.draw do
  root 'pages#home'

  devise_scope :user do
    get 'users', to: 'devise/sessions#new'
  end

  devise_for :users
end
