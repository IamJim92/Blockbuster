Rails.application.routes.draw do
  # resources :charges, only: [:new, :create]
  # get 'thanks', to: 'charges#thanks', as: 'thanks'
  resources :orders, only: [:show, :create] do
    resources :payments, only: :new
  end
  devise_for :users
  resources :games do
    # resources :inventories, only: :index
  end

  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
