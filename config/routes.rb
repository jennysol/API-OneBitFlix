Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'executions/create'
      get 'executions/update'
    end
  end
  namespace :api do
    namespace :v1 do
      get 'series/show'
    end
  end
  namespace :api do
    namespace :v1 do
      get 'movies/show'
    end
  end
  namespace :api do
    namespace :v1 do
      get 'searches/index'
    end
  end
  namespace :api do
    namespace :v1 do
      get 'reviews/index'
      get 'reviews/create'
    end
  end
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
