Rails.application.routes.draw do

  resources :topics do
    resources :bookmarks
  end

# For mailgun
  post :incoming, to: 'incoming#create'

# Devise
  devise_for :users

  get 'welcome/index'

  root 'topics#index'

end
