Rails.application.routes.draw do
  resources :tags

  resources :movies do
    post 'add_tag', on: :member
  end

  root 'movies#index'

end
