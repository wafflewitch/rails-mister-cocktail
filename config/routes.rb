Rails.application.routes.draw do

  resources :cocktails do
    resources :doses, only: [ :new, :create ]
  end

  resources :doses, only: [ :destroy ]

  get '/cocktails/:id/upload', to: 'cocktails#upload', as: 'upload_photo'

  post '/cocktails/:id', to: 'cocktails#update'

  root "cocktails#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
