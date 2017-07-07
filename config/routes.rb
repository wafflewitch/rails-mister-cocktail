Rails.application.routes.draw do

  get 'reviews/new'

  get 'reviews/index'

  get 'reviews/show'

  resources :cocktails do
    resources :doses, only: [ :new, :create ]
  end

  resources :doses, only: [ :destroy ]

  get '/cocktails/:id/upload', to: 'cocktails#upload', as: 'upload_photo'

  post '/cocktails/:id', to: 'cocktails#update'

  get 'cocktails/:cocktail_id/reviews/new', to: "reviews#new", as: 'new_review'

  post 'cocktails/:cocktail_id/reviews', to: "reviews#create", as: 'cocktail_reviews'

  get 'reviews/:id', to: "reviews#show"

  get 'cocktails/:cocktail_id/reviews', to: "reviews#index", as: 'all_reviews'

  root "cocktails#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
