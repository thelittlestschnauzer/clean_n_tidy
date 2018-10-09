Rails.application.routes.draw do

  root to: 'pages#home'

  devise_scope :users do
    get 'login', to: 'devise/sessions#new'
  end

  devise_scope :users do
    get 'logout', to: 'devise/sessions#destroy'
  end

  devise_scope :users do
    get 'signup', to: 'devise/registrations#new'
  end 

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
