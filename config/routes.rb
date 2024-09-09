Rails.application.routes.draw do
  devise_for :users

 

  devise_scope :user do
    authenticated :user do
      root 'main_menu#index', as: :authenticated_root
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end

  resources :announcement, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :calendar, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :diary, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :result, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :total, only: [:index, :show, :new, :create, :edit, :update, :destroy]
end