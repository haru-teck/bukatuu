Rails.application.routes.draw do
  devise_for :users, skip: [:registrations]

  devise_scope :user do
    authenticated :user do
      root 'main_menu#index', as: :authenticated_root
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end

  resources :announcements, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :calendars, only: [:index]  # calendar_index_path
  resources :diaries, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :results, only: [:index]    # result_index_path
  resources :totals, only: [:index]     # total_index_path

 
end