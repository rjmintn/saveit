Rails.application.routes.draw do

  get 'bookmarks/show'

  get 'bookmarks/new'

  get 'bookmarks/edit'

  get 'bookmarks/create'

  get 'bookmarks/update'

  get 'bookmarks/destroy'

  resources :topics do
    resources :bookmarks
  end

  devise_for :users
  get 'welcome/index'

  root 'topics#index'

end
