Rails.application.routes.draw do
  use_doorkeeper

  namespace :api, defaults: {format: 'json'} do
    namespace :v1 do
      resources :users do
        member do
          get :me
        end
      end
    end
  end

  root to: 'home#index'
end
