Rails.application.routes.draw do

  resources :topics do
    resources :bookmarks
  end

  devise_for :users
  get 'welcome/index'

  root 'topics#index'

end
