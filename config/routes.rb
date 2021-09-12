Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'favorites/index'
      get 'favorites/create'
      get 'favorites/destroy'
    end
  end
  get 'home/index'
  devise_for :users
  root to: "home#index"
end
