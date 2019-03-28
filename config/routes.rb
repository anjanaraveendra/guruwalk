Rails.application.routes.draw do
  resources :tours do
    member do
      post :add_rating
      post :book
    end
  end
  devise_for :users
  devise_scope :user do
    authenticated :user do
      root 'tours#index', as: :authenticated_root
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end
end
