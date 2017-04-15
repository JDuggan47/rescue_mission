Rails.application.routes.draw do
  resources :questions do
    resources :answers, only: [:index, :new, :create]
  end
  resources :answers, only: [:show]

  root "questions#index"
end
