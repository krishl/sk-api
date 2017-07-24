Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :ingredients, except: [:delete]
      resources :products, except: [:delete]
      post '/upvote', to: 'products#upvote'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
