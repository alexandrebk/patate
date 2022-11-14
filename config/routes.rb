Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  namespace :api do
    resources :potato_quotations, param: :date do
      member do
        get 'history'
        get 'maximum_gain'
      end
    end
  end
end
