Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [:index, :show, :new, :create, :edit, :update] do
    resources :doses, only: [:new, :create, :destroy]
    resources :reviews, only: [:new, :create, :destroy]
  end

  # resources :doses, only: [:destroy]

  root to: 'cocktails#index'
end
