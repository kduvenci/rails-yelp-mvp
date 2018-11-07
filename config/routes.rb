Rails.application.routes.draw do
  get '/', to:'restaurants#index', as: :root
  resources :restaurants, only: [:index, :new, :show, :create ] do
    resources :reviews, only: [ :new, :create ]
  end
end
