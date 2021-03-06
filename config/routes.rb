Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'cocktails#index'

  resources :cocktails, only: [:index, :show, :create, :new] do
    resources :doses, only: [:create]
  end

  resources :doses, only: [:destroy]
  resources :ingredients, only: :show

  mount Attachinary::Engine => "/attachinary"

end
