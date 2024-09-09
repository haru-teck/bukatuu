Rails.application.routes.draw do
  get 'total/index'
  get 'total/show'
  get 'total/new'
  get 'total/create'
  get 'total/edit'
  get 'total/update'
  get 'total/destroy'
  get 'result/index'
  get 'result/show'
  get 'result/new'
  get 'result/create'
  get 'result/edit'
  get 'result/update'
  get 'result/destroy'
  get 'diary/index'
  get 'diary/show'
  get 'diary/new'
  get 'diary/create'
  get 'diary/edit'
  get 'diary/update'
  get 'diary/destroy'
  get 'calendar/index'
  get 'calendar/show'
  get 'calendar/new'
  get 'calendar/create'
  get 'calendar/edit'
  get 'calendar/update'
  get 'calendar/destroy'
  get 'announcement/index'
  get 'announcement/show'
  get 'announcement/new'
  get 'announcement/create'
  get 'announcement/edit'
  get 'announcement/update'
  get 'announcement/destroy'
  devise_for :users

  authenticated :user do
    root 'main_menu#index', as: :authenticated_root
  end

  unauthenticated :user do
    root 'devise/sessions#new', as: :unauthenticated_root
  end

  resources :announcement, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :calendar, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :diary, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :result, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :total, only: [:index, :show, :new, :create, :edit, :update, :destroy]
end
