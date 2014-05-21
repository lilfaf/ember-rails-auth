Rails.application.routes.draw do
  use_doorkeeper

  namespace :api, defaults: {format: 'json'} do
    namespace :v1 do
      resources :users
    end
  end

  root to: 'home#index'
end
