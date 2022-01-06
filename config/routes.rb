Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resource :users
        resources :facts
    end
  end
end
