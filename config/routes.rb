Rails.application.routes.draw do
  resources :movies do
    resources :reviews, only: [:new, :create]
  end
  resources :reviews, only: [:destroy]

end
